; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappend_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappend_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.mbuf* }

@M_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbappend_locked(%struct.sockbuf* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %9 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %8)
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = icmp eq %struct.mbuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %103

13:                                               ; preds = %3
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sbm_clrprotoflags(%struct.mbuf* %14, i32 %15)
  %17 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %18 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %17)
  %19 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %20 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %19, i32 0, i32 1
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %7, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 2
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 2
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  store %struct.mbuf* %33, %struct.mbuf** %7, align 8
  br label %25

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %57, %34
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @M_EOR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i32 @sbappendrecord_locked(%struct.sockbuf* %43, %struct.mbuf* %44)
  br label %103

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  %51 = icmp ne %struct.mbuf* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  store %struct.mbuf* %55, %struct.mbuf** %7, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %35, label %59

59:                                               ; preds = %57
  br label %96

60:                                               ; preds = %13
  %61 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %62 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %61, i32 0, i32 0
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  store %struct.mbuf* %63, %struct.mbuf** %7, align 8
  %64 = icmp ne %struct.mbuf* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %88, %65
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @M_EOR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = call i32 @sbappendrecord_locked(%struct.sockbuf* %74, %struct.mbuf* %75)
  br label %103

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 1
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  %82 = icmp ne %struct.mbuf* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 1
  %86 = load %struct.mbuf*, %struct.mbuf** %85, align 8
  store %struct.mbuf* %86, %struct.mbuf** %7, align 8
  %87 = icmp ne %struct.mbuf* %86, null
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br i1 %89, label %66, label %90

90:                                               ; preds = %88
  br label %95

91:                                               ; preds = %60
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 0
  store %struct.mbuf* %92, %struct.mbuf** %94, align 8
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %100 = call i32 @sbcompress(%struct.sockbuf* %97, %struct.mbuf* %98, %struct.mbuf* %99)
  %101 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %102 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %101)
  br label %103

103:                                              ; preds = %96, %73, %42, %12
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @sbm_clrprotoflags(%struct.mbuf*, i32) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

declare dso_local i32 @sbappendrecord_locked(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
