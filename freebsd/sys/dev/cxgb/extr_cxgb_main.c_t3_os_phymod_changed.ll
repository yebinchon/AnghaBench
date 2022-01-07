; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_t3_os_phymod_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_t3_os_phymod_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@t3_os_phymod_changed.mod_str = internal global [7 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LRM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TWINAX\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"TWINAX-L\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@phy_modtype_none = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"PHY module unplugged\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"invalid PHY module type %d\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s PHY module inserted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_os_phymod_changed(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.port_info*, %struct.port_info** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i64 %11
  store %struct.port_info* %12, %struct.port_info** %5, align 8
  %13 = load %struct.port_info*, %struct.port_info** %5, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.port_info*, %struct.port_info** %5, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.port_info*, %struct.port_info** %5, align 8
  %27 = call i32 @cxgb_build_medialist(%struct.port_info* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @phy_modtype_none, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.port_info*, %struct.port_info** %5, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @if_printf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %54

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @t3_os_phymod_changed.mod_str, i64 0, i64 0))
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %41, i8* %44)
  %46 = load %struct.port_info*, %struct.port_info** %5, align 8
  %47 = getelementptr inbounds %struct.port_info, %struct.port_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i8*], [7 x i8*]* @t3_os_phymod_changed.mod_str, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @if_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @cxgb_build_medialist(%struct.port_info*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
