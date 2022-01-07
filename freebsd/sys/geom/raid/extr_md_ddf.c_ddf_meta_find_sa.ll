; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddf_sa_record = type { i32 }
%struct.ddf_meta = type { i32 }

@DDF_SA_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddf_sa_record* (%struct.ddf_meta*, i32)* @ddf_meta_find_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddf_sa_record* @ddf_meta_find_sa(%struct.ddf_meta* %0, i32 %1) #0 {
  %3 = alloca %struct.ddf_sa_record*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddf_sa_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %10 = call i32 @GETCRNUM(%struct.ddf_meta* %9)
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.ddf_sa_record* @GETSAPTR(%struct.ddf_meta* %16, i32 %17)
  store %struct.ddf_sa_record* %18, %struct.ddf_sa_record** %6, align 8
  %19 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %20 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %6, align 8
  %21 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GET32D(%struct.ddf_meta* %19, i32 %22)
  %24 = load i32, i32* @DDF_SA_SIGNATURE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %6, align 8
  store %struct.ddf_sa_record* %27, %struct.ddf_sa_record** %3, align 8
  br label %65

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.ddf_sa_record* @GETSAPTR(%struct.ddf_meta* %41, i32 %42)
  store %struct.ddf_sa_record* %43, %struct.ddf_sa_record** %6, align 8
  %44 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %45 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %6, align 8
  %46 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GET32D(%struct.ddf_meta* %44, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %52 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %6, align 8
  %53 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GET32D(%struct.ddf_meta* %51, i32 %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %40
  %58 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %6, align 8
  store %struct.ddf_sa_record* %58, %struct.ddf_sa_record** %3, align 8
  br label %65

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %36

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %32
  store %struct.ddf_sa_record* null, %struct.ddf_sa_record** %3, align 8
  br label %65

65:                                               ; preds = %64, %57, %26
  %66 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %3, align 8
  ret %struct.ddf_sa_record* %66
}

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_sa_record* @GETSAPTR(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET32D(%struct.ddf_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
