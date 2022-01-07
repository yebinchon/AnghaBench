; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_get_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_get_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32 }

@DISK_IDENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, i8*, i32)* @g_raid_md_get_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_get_label(%struct.g_consumer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @DISK_IDENT_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = trunc i64 %14 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %19 = call i32 @g_io_getattr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %18, i32* %10, i8* %16)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %41

24:                                               ; preds = %3
  %25 = call i32 @strlen(i8* %16)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %16, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @strncpy(i8* %35, i8* %38, i32 %39)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %22
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_io_getattr(i8*, %struct.g_consumer*, i32*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
