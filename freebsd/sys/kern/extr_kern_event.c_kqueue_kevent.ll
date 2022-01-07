; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.thread = type { i32* }
%struct.kevent_copyops = type { i32 (i32, %struct.kevent*, i32)*, i32, i32 (i32, %struct.kevent.0*, i32)* }
%struct.kevent = type opaque
%struct.kevent.0 = type opaque
%struct.timespec = type { i32 }
%struct.kevent.1 = type { i32, i32, i32 }

@KQ_NEVENTS = common dso_local global i32 0, align 4
@EV_SYSFLAGS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EV_RECEIPT = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, %struct.thread*, i32, i32, %struct.kevent_copyops*, %struct.timespec*)* @kqueue_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_kevent(%struct.kqueue* %0, %struct.thread* %1, i32 %2, i32 %3, %struct.kevent_copyops* %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kqueue*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kevent_copyops*, align 8
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.kevent.1*, align 8
  %17 = alloca %struct.kevent.1*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %8, align 8
  store %struct.thread* %1, %struct.thread** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.kevent_copyops* %4, %struct.kevent_copyops** %12, align 8
  store %struct.timespec* %5, %struct.timespec** %13, align 8
  %23 = load i32, i32* @KQ_NEVENTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca %struct.kevent.1, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %20, align 4
  br label %27

27:                                               ; preds = %118, %6
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %122

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @KQ_NEVENTS, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @KQ_NEVENTS, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %19, align 4
  %40 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %41 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.kevent*, i32)*, i32 (i32, %struct.kevent*, i32)** %41, align 8
  %43 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %44 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.kevent.1* %26 to %struct.kevent*
  %47 = load i32, i32* %19, align 4
  %48 = call i32 %42(i32 %45, %struct.kevent* %46, i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %21, align 4
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %138

53:                                               ; preds = %38
  store %struct.kevent.1* %26, %struct.kevent.1** %17, align 8
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %115, %53
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %118

58:                                               ; preds = %54
  %59 = load %struct.kevent.1*, %struct.kevent.1** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %59, i64 %61
  store %struct.kevent.1* %62, %struct.kevent.1** %16, align 8
  %63 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %64 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %115

68:                                               ; preds = %58
  %69 = load i32, i32* @EV_SYSFLAGS, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %72 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %76 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %77 = load %struct.thread*, %struct.thread** %9, align 8
  %78 = load i32, i32* @M_WAITOK, align 4
  %79 = call i32 @kqueue_register(%struct.kqueue* %75, %struct.kevent.1* %76, %struct.thread* %77, i32 %78)
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %68
  %83 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %84 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EV_RECEIPT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %82, %68
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %138

94:                                               ; preds = %89
  %95 = load i32, i32* @EV_ERROR, align 4
  %96 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %97 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %100 = getelementptr inbounds %struct.kevent.1, %struct.kevent.1* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %102 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %101, i32 0, i32 2
  %103 = load i32 (i32, %struct.kevent.0*, i32)*, i32 (i32, %struct.kevent.0*, i32)** %102, align 8
  %104 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %105 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.kevent.1*, %struct.kevent.1** %16, align 8
  %108 = bitcast %struct.kevent.1* %107 to %struct.kevent.0*
  %109 = call i32 %103(i32 %106, %struct.kevent.0* %108, i32 1)
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %20, align 4
  br label %114

114:                                              ; preds = %94, %82
  br label %115

115:                                              ; preds = %114, %67
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %54

118:                                              ; preds = %54
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %27

122:                                              ; preds = %27
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.thread*, %struct.thread** %9, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %138

131:                                              ; preds = %122
  %132 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %135 = load %struct.timespec*, %struct.timespec** %13, align 8
  %136 = load %struct.thread*, %struct.thread** %9, align 8
  %137 = call i32 @kqueue_scan(%struct.kqueue* %132, i32 %133, %struct.kevent_copyops* %134, %struct.timespec* %135, %struct.kevent.1* %26, %struct.thread* %136)
  store i32 %137, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %138

138:                                              ; preds = %131, %125, %92, %51
  %139 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kqueue_register(%struct.kqueue*, %struct.kevent.1*, %struct.thread*, i32) #2

declare dso_local i32 @kqueue_scan(%struct.kqueue*, i32, %struct.kevent_copyops*, %struct.timespec*, %struct.kevent.1*, %struct.thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
