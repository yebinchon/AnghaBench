; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32, i32, %struct.icl_pdu*, %struct.socket*, i32, i32, i32, i64, i64 }
%struct.icl_pdu = type { i32 }
%struct.socket = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@SO_SND = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@ip_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"destroying session with non-empty send queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icl_soft_conn_close(%struct.icl_conn* %0) #0 {
  %2 = alloca %struct.icl_conn*, align 8
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %2, align 8
  %5 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %6 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %5)
  %7 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %8 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %11 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %16 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %23 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %22, i32 0, i32 6
  %24 = call i32 @cv_signal(i32* %23)
  %25 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %26 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %25, i32 0, i32 5
  %27 = call i32 @cv_signal(i32* %26)
  %28 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %29 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %28, i32 0, i32 5
  %30 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %31 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cv_wait(i32* %29, i32 %32)
  br label %9

34:                                               ; preds = %19
  %35 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %36 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %35, i32 0, i32 3
  %37 = load %struct.socket*, %struct.socket** %36, align 8
  store %struct.socket* %37, %struct.socket** %4, align 8
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = icmp eq %struct.socket* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %42 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %41)
  br label %121

43:                                               ; preds = %34
  %44 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %45 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %44, i32 0, i32 3
  store %struct.socket* null, %struct.socket** %45, align 8
  %46 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %47 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %46)
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  %50 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %49)
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.socket*, %struct.socket** %4, align 8
  %58 = load i32, i32* @SO_SND, align 4
  %59 = call i32 @soupcall_clear(%struct.socket* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %43
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 1
  %63 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %62)
  %64 = load %struct.socket*, %struct.socket** %4, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %65)
  %67 = load %struct.socket*, %struct.socket** %4, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = load i32, i32* @SO_RCV, align 4
  %75 = call i32 @soupcall_clear(%struct.socket* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %60
  %77 = load %struct.socket*, %struct.socket** %4, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 0
  %79 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %78)
  %80 = load %struct.socket*, %struct.socket** %4, align 8
  %81 = call i32 @soclose(%struct.socket* %80)
  %82 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %83 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %82)
  %84 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %85 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %84, i32 0, i32 2
  %86 = load %struct.icl_pdu*, %struct.icl_pdu** %85, align 8
  %87 = icmp ne %struct.icl_pdu* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %90 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %91 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %90, i32 0, i32 2
  %92 = load %struct.icl_pdu*, %struct.icl_pdu** %91, align 8
  %93 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %89, %struct.icl_pdu* %92)
  %94 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %95 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %94, i32 0, i32 2
  store %struct.icl_pdu* null, %struct.icl_pdu** %95, align 8
  br label %96

96:                                               ; preds = %88, %76
  br label %97

97:                                               ; preds = %103, %96
  %98 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %99 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %98, i32 0, i32 1
  %100 = call i32 @STAILQ_EMPTY(i32* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %105 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %104, i32 0, i32 1
  %106 = call %struct.icl_pdu* @STAILQ_FIRST(i32* %105)
  store %struct.icl_pdu* %106, %struct.icl_pdu** %3, align 8
  %107 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %108 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %107, i32 0, i32 1
  %109 = load i32, i32* @ip_next, align 4
  %110 = call i32 @STAILQ_REMOVE_HEAD(i32* %108, i32 %109)
  %111 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %112 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %113 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %111, %struct.icl_pdu* %112)
  br label %97

114:                                              ; preds = %97
  %115 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %116 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %115, i32 0, i32 1
  %117 = call i32 @STAILQ_EMPTY(i32* %116)
  %118 = call i32 @KASSERT(i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %120 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %119)
  br label %121

121:                                              ; preds = %114, %40
  ret void
}

declare dso_local i32 @ICL_CONN_LOCK(%struct.icl_conn*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32) #1

declare dso_local i32 @ICL_CONN_UNLOCK(%struct.icl_conn*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @soupcall_clear(%struct.socket*, i32) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @icl_soft_conn_pdu_free(%struct.icl_conn*, %struct.icl_pdu*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.icl_pdu* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
