; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_ism_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_ism_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_30__, %struct.TYPE_31__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"opcode=0x%x itt=0x%x stat#0x%x maxcmd=0x%0x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"we lost some rec=0x%x exp=0x%x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wakeup rsp\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"opcode=0x%x itt=0x%x not implemented yet\00", align 1
@sn = common dso_local global %struct.TYPE_32__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ism_recv(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %8 = call i32 @debug_called(i32 8)
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %5, align 8
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohl(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @sdebug(i32 5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %46 [
    i32 132, label %35
  ]

35:                                               ; preds = %2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %7, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %66

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %2, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @sdebug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %44
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %103 [
    i32 136, label %70
    i32 128, label %70
    i32 135, label %70
    i32 134, label %78
    i32 130, label %82
    i32 132, label %86
    i32 133, label %90
    i32 131, label %94
    i32 137, label %98
    i32 129, label %102
  ]

70:                                               ; preds = %66, %66, %66
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = call i32 @i_nqueue_rsp(%struct.TYPE_29__* %71, %struct.TYPE_28__* %72)
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = call i32 @wakeup(i32* %75)
  %77 = call i32 (i32, i8*, ...) @sdebug(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %112

78:                                               ; preds = %66
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %81 = call i32 @_nop_in(%struct.TYPE_29__* %79, %struct.TYPE_28__* %80)
  br label %112

82:                                               ; preds = %66
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %85 = call i32 @_scsi_rsp(%struct.TYPE_29__* %83, %struct.TYPE_28__* %84)
  br label %112

86:                                               ; preds = %66
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %89 = call i32 @_read_data(%struct.TYPE_29__* %87, %struct.TYPE_28__* %88)
  br label %112

90:                                               ; preds = %66
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = call i32 @_r2t(%struct.TYPE_29__* %91, %struct.TYPE_28__* %92)
  br label %112

94:                                               ; preds = %66
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %97 = call i32 @_reject(%struct.TYPE_29__* %95, %struct.TYPE_28__* %96)
  br label %112

98:                                               ; preds = %66
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %101 = call i32 @_async(%struct.TYPE_29__* %99, %struct.TYPE_28__* %100)
  br label %112

102:                                              ; preds = %66
  br label %103

103:                                              ; preds = %66, %102
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohl(i32 %109)
  %111 = call i32 (i32, i8*, ...) @sdebug(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %103, %98, %94, %90, %86, %82, %78, %70
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local i32 @i_nqueue_rsp(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @_nop_in(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @_scsi_rsp(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @_read_data(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @_r2t(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @_reject(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @_async(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
