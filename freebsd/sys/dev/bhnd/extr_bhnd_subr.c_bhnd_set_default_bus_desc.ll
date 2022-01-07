; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_set_default_bus_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_set_default_bus_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_chipid = type { i32, i32 }

@BHND_CHIPID_MAX_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SIBA bus\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BCMA bus\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UBUS bus\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Unknown Type\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_set_default_bus_desc(i32 %0, %struct.bhnd_chipid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_chipid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bhnd_chipid* %1, %struct.bhnd_chipid** %4, align 8
  %9 = load i32, i32* @BHND_CHIPID_MAX_NAMELEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %4, align 8
  %14 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %19 [
    i32 129, label %16
    i32 131, label %17
    i32 130, label %17
    i32 128, label %18
  ]

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %20

17:                                               ; preds = %2, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %20

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %20

20:                                               ; preds = %19, %18, %17, %16
  %21 = trunc i64 %10 to i32
  %22 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %4, align 8
  %23 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bhnd_format_chip_id(i8* %12, i32 %21, i32 %24)
  %26 = load i32, i32* @M_BHND, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @asprintf(i8** %6, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @device_set_desc_copy(i32 %32, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @M_BHND, align 4
  %37 = call i32 @free(i8* %35, i32 %36)
  br label %42

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @device_set_desc(i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bhnd_format_chip_id(i8*, i32, i32) #2

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*, i8*) #2

declare dso_local i32 @device_set_desc_copy(i32, i8*) #2

declare dso_local i32 @free(i8*, i32) #2

declare dso_local i32 @device_set_desc(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
