; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_bio_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_bio_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_command = type { i8*, i32, i64, %struct.bio*, i32 }
%struct.bio = type { i32, i32, i64 }
%struct.xbd_softc = type { i64, i32, i32, i32 }

@XBD_STATE_CONNECTED = common dso_local global i64 0, align 8
@XBD_Q_FREE = common dso_local global i32 0, align 4
@XBDF_CM_SHORTAGE = common dso_local global i32 0, align 4
@xbd_restart_queue_callback = common dso_local global i32 0, align 4
@XBDF_GNT_SHORTAGE = common dso_local global i32 0, align 4
@BLKIF_OP_READ = common dso_local global i8* null, align 8
@BLKIF_OP_WRITE = common dso_local global i8* null, align 8
@BIO_ORDERED = common dso_local global i32 0, align 4
@XBDF_BARRIER = common dso_local global i32 0, align 4
@BLKIF_OP_WRITE_BARRIER = common dso_local global i8* null, align 8
@XBDCF_Q_FREEZE = common dso_local global i32 0, align 4
@XBD_Q_BUSY = common dso_local global i32 0, align 4
@XBDF_WAIT_IDLE = common dso_local global i32 0, align 4
@XBD_Q_READY = common dso_local global i32 0, align 4
@XBDF_FLUSH = common dso_local global i32 0, align 4
@BLKIF_OP_FLUSH_DISKCACHE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"flush request, but no flush support available\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown bio command %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xbd_command* (%struct.xbd_softc*)* @xbd_bio_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xbd_command* @xbd_bio_command(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_command*, align 8
  %3 = alloca %struct.xbd_softc*, align 8
  %4 = alloca %struct.xbd_command*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.xbd_softc* %0, %struct.xbd_softc** %3, align 8
  %6 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XBD_STATE_CONNECTED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @__predict_false(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.xbd_command* null, %struct.xbd_command** %2, align 8
  br label %149

15:                                               ; preds = %1
  %16 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %17 = call %struct.bio* @xbd_dequeue_bio(%struct.xbd_softc* %16)
  store %struct.bio* %17, %struct.bio** %5, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = icmp eq %struct.bio* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.xbd_command* null, %struct.xbd_command** %2, align 8
  br label %149

21:                                               ; preds = %15
  %22 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %23 = load i32, i32* @XBD_Q_FREE, align 4
  %24 = call %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc* %22, i32 %23)
  store %struct.xbd_command* %24, %struct.xbd_command** %4, align 8
  %25 = icmp eq %struct.xbd_command* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %28 = load i32, i32* @XBDF_CM_SHORTAGE, align 4
  %29 = call i32 @xbd_freeze(%struct.xbd_softc* %27, i32 %28)
  %30 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = call i32 @xbd_requeue_bio(%struct.xbd_softc* %30, %struct.bio* %31)
  store %struct.xbd_command* null, %struct.xbd_command** %2, align 8
  br label %149

33:                                               ; preds = %21
  %34 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %38 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %37, i32 0, i32 4
  %39 = call i64 @gnttab_alloc_grant_references(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %43 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %42, i32 0, i32 3
  %44 = load i32, i32* @xbd_restart_queue_callback, align 4
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %46 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %47 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gnttab_request_free_callback(i32* %43, i32 %44, %struct.xbd_softc* %45, i32 %48)
  %50 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %51 = load i32, i32* @XBDF_GNT_SHORTAGE, align 4
  %52 = call i32 @xbd_freeze(%struct.xbd_softc* %50, i32 %51)
  %53 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = call i32 @xbd_requeue_bio(%struct.xbd_softc* %53, %struct.bio* %54)
  %56 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %57 = load i32, i32* @XBD_Q_FREE, align 4
  %58 = call i32 @xbd_enqueue_cm(%struct.xbd_command* %56, i32 %57)
  store %struct.xbd_command* null, %struct.xbd_command** %2, align 8
  br label %149

59:                                               ; preds = %33
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %62 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %61, i32 0, i32 3
  store %struct.bio* %60, %struct.bio** %62, align 8
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %67 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %142 [
    i32 129, label %71
    i32 128, label %75
    i32 130, label %116
  ]

71:                                               ; preds = %59
  %72 = load i8*, i8** @BLKIF_OP_READ, align 8
  %73 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %74 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %147

75:                                               ; preds = %59
  %76 = load i8*, i8** @BLKIF_OP_WRITE, align 8
  %77 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %78 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BIO_ORDERED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %75
  %86 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %87 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @XBDF_BARRIER, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i8*, i8** @BLKIF_OP_WRITE_BARRIER, align 8
  %94 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %95 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %114

96:                                               ; preds = %85
  %97 = load i32, i32* @XBDCF_Q_FREEZE, align 4
  %98 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %99 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %103 = load i32, i32* @XBD_Q_BUSY, align 4
  %104 = call i32 @xbd_queue_length(%struct.xbd_softc* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %108 = load i32, i32* @XBDF_WAIT_IDLE, align 4
  %109 = call i32 @xbd_freeze(%struct.xbd_softc* %107, i32 %108)
  %110 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %111 = load i32, i32* @XBD_Q_READY, align 4
  %112 = call i32 @xbd_requeue_cm(%struct.xbd_command* %110, i32 %111)
  store %struct.xbd_command* null, %struct.xbd_command** %2, align 8
  br label %149

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %92
  br label %115

115:                                              ; preds = %114, %75
  br label %147

116:                                              ; preds = %59
  %117 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %118 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @XBDF_FLUSH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i8*, i8** @BLKIF_OP_FLUSH_DISKCACHE, align 8
  %125 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %126 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %141

127:                                              ; preds = %116
  %128 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %129 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @XBDF_BARRIER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i8*, i8** @BLKIF_OP_WRITE_BARRIER, align 8
  %136 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %137 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %140

138:                                              ; preds = %127
  %139 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %123
  br label %147

142:                                              ; preds = %59
  %143 = load %struct.bio*, %struct.bio** %5, align 8
  %144 = getelementptr inbounds %struct.bio, %struct.bio* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %142, %141, %115, %71
  %148 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  store %struct.xbd_command* %148, %struct.xbd_command** %2, align 8
  br label %149

149:                                              ; preds = %147, %106, %41, %26, %20, %14
  %150 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  ret %struct.xbd_command* %150
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.bio* @xbd_dequeue_bio(%struct.xbd_softc*) #1

declare dso_local %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc*, i32) #1

declare dso_local i32 @xbd_freeze(%struct.xbd_softc*, i32) #1

declare dso_local i32 @xbd_requeue_bio(%struct.xbd_softc*, %struct.bio*) #1

declare dso_local i64 @gnttab_alloc_grant_references(i32, i32*) #1

declare dso_local i32 @gnttab_request_free_callback(i32*, i32, %struct.xbd_softc*, i32) #1

declare dso_local i32 @xbd_enqueue_cm(%struct.xbd_command*, i32) #1

declare dso_local i32 @xbd_queue_length(%struct.xbd_softc*, i32) #1

declare dso_local i32 @xbd_requeue_cm(%struct.xbd_command*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
