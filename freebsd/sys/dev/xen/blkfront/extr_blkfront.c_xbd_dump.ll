; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64, %struct.xbd_softc* }
%struct.xbd_softc = type { i64, i32, i32, i32 }
%struct.xbd_command = type { i64, i64, i64, i32, i32, i8*, i32 }

@XBD_Q_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dump: no more commands?\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no more grant allocs?\0A\00", align 1
@BLKIF_OP_WRITE = common dso_local global i32 0, align 4
@xbd_dump_complete = common dso_local global i32 0, align 4
@XBD_Q_READY = common dso_local global i32 0, align 4
@XBD_Q_COMPLETE = common dso_local global i32 0, align 4
@BLKIF_RSP_OKAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Dump I/O failed at sector %jd\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @xbd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_dump(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.disk*, align 8
  %13 = alloca %struct.xbd_softc*, align 8
  %14 = alloca %struct.xbd_command*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.disk*
  store %struct.disk* %19, %struct.disk** %12, align 8
  %20 = load %struct.disk*, %struct.disk** %12, align 8
  %21 = getelementptr inbounds %struct.disk, %struct.disk* %20, i32 0, i32 1
  %22 = load %struct.xbd_softc*, %struct.xbd_softc** %21, align 8
  store %struct.xbd_softc* %22, %struct.xbd_softc** %13, align 8
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %150

26:                                               ; preds = %5
  %27 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %28 = call i32 @xbd_quiesce(%struct.xbd_softc* %27)
  %29 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %30 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %29, i32 0, i32 2
  %31 = call i32 @mtx_lock(i32* %30)
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %114, %26
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %117

35:                                               ; preds = %32
  %36 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %37 = load i32, i32* @XBD_Q_FREE, align 4
  %38 = call %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc* %36, i32 %37)
  store %struct.xbd_command* %38, %struct.xbd_command** %14, align 8
  %39 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %40 = icmp eq %struct.xbd_command* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %43 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %42, i32 0, i32 2
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %46 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %6, align 4
  br label %150

50:                                               ; preds = %35
  %51 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %52 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %55 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %54, i32 0, i32 6
  %56 = call i64 @gnttab_alloc_grant_references(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %60 = call i32 @xbd_free_command(%struct.xbd_command* %59)
  %61 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %62 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %61, i32 0, i32 2
  %63 = call i32 @mtx_unlock(i32* %62)
  %64 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %65 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EBUSY, align 4
  store i32 %68, i32* %6, align 4
  br label %150

69:                                               ; preds = %50
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %72 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %77 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %81

79:                                               ; preds = %69
  %80 = load i64, i64* %11, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i64 [ %78, %75 ], [ %80, %79 ]
  store i64 %82, i64* %15, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %85 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %88 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @BLKIF_OP_WRITE, align 4
  %90 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %91 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.disk*, %struct.disk** %12, align 8
  %94 = getelementptr inbounds %struct.disk, %struct.disk* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = udiv i64 %92, %95
  %97 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %98 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @xbd_dump_complete, align 4
  %100 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %101 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %103 = load i32, i32* @XBD_Q_READY, align 4
  %104 = call i32 @xbd_enqueue_cm(%struct.xbd_command* %102, i32 %103)
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %11, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %81
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %32

117:                                              ; preds = %32
  %118 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %119 = call i32 @xbd_startio(%struct.xbd_softc* %118)
  %120 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %121 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %120, i32 0, i32 2
  %122 = call i32 @mtx_unlock(i32* %121)
  %123 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %124 = call i32 @xbd_quiesce(%struct.xbd_softc* %123)
  br label %125

125:                                              ; preds = %145, %117
  %126 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %127 = load i32, i32* @XBD_Q_COMPLETE, align 4
  %128 = call %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc* %126, i32 %127)
  store %struct.xbd_command* %128, %struct.xbd_command** %14, align 8
  %129 = icmp ne %struct.xbd_command* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %132 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BLKIF_RSP_OKAY, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.xbd_softc*, %struct.xbd_softc** %13, align 8
  %138 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %141 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* @EIO, align 4
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %136, %130
  %146 = load %struct.xbd_command*, %struct.xbd_command** %14, align 8
  %147 = call i32 @xbd_free_command(%struct.xbd_command* %146)
  br label %125

148:                                              ; preds = %125
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %58, %41, %25
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @xbd_quiesce(%struct.xbd_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @gnttab_alloc_grant_references(i32, i32*) #1

declare dso_local i32 @xbd_free_command(%struct.xbd_command*) #1

declare dso_local i32 @xbd_enqueue_cm(%struct.xbd_command*, i32) #1

declare dso_local i32 @xbd_startio(%struct.xbd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
