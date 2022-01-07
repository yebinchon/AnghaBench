; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_create_char_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_create_char_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pqisrc_softstate* }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IN idx = %d\0A\00", align 1
@smartpqi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"smartpqi%u\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_char_dev(%struct.pqisrc_softstate* %0, i32 %1) #0 {
  %3 = alloca %struct.pqisrc_softstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pqisrc_softstate* %0, %struct.pqisrc_softstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UID_ROOT, align 4
  %11 = load i32, i32* @GID_OPERATOR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_4__* @make_dev(i32* @smartpqi_cdevsw, i32 %9, i32 %10, i32 %11, i32 416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %15 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %18 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %24 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %25 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.pqisrc_softstate* %23, %struct.pqisrc_softstate** %28, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @DBG_FUNC(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
