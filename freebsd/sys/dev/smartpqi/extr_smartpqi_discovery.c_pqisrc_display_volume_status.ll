; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_display_volume_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_display_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Volume is online.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Volume is undergoing background erase process.\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Volume is waiting for transforming volume.\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Volume is undergoing rapid parity initialization process.\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Volume is queued for rapid parity initialization process.\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Volume is encrypted and cannot be accessed because key is not present.\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"Volume is not encrypted and cannot be accessed because controller is in encryption-only mode.\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Volume is undergoing encryption process.\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Volume is undergoing encryption re-keying process.\00", align 1
@.str.10 = private unnamed_addr constant [96 x i8] c"Volume is encrypted and cannot be accessed because controller does not have encryption enabled.\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"Volume is pending migration to encrypted state, but process has not started.\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Volume is encrypted and is pending encryption rekeying.\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Volume status is not available through vital product data pages.\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Volume is in an unknown state.\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"scsi BTL %d:%d:%d %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @pqisrc_display_volume_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqisrc_display_volume_status(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %23 [
    i32 137, label %10
    i32 129, label %11
    i32 138, label %12
    i32 128, label %13
    i32 134, label %14
    i32 139, label %15
    i32 133, label %16
    i32 131, label %17
    i32 130, label %18
    i32 140, label %19
    i32 136, label %20
    i32 135, label %21
    i32 132, label %22
  ]

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %24

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %24

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %24

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %24

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %24

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %24

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %24

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %24

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %24

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %24

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %24

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %24

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %24

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @DBG_DISC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i8* %34)
  %36 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @DBG_DISC(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
