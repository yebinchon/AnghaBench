; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdiodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdiodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, %struct.bio*, i32, %struct.bio* }

@BIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @ccdiodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdiodone(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 3
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 5
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %4, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BIO_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = icmp ne %struct.bio* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = call i32 @g_destroy_bio(%struct.bio* %29)
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = call i32 @g_std_done(%struct.bio* %32)
  br label %85

34:                                               ; preds = %16
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = icmp ne %struct.bio* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.bio*, %struct.bio** %3, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 3
  store %struct.bio* null, %struct.bio** %39, align 8
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = call i32 @g_destroy_bio(%struct.bio* %44)
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @g_io_request(%struct.bio* %46, i32 %49)
  br label %85

51:                                               ; preds = %34
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @g_std_done(%struct.bio* %52)
  br label %85

54:                                               ; preds = %1
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = icmp ne %struct.bio* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 3
  store %struct.bio* null, %struct.bio** %59, align 8
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.bio*, %struct.bio** %2, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load %struct.bio*, %struct.bio** %4, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.bio*, %struct.bio** %2, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %68, %57
  %80 = load %struct.bio*, %struct.bio** %2, align 8
  %81 = call i32 @g_destroy_bio(%struct.bio* %80)
  br label %85

82:                                               ; preds = %54
  %83 = load %struct.bio*, %struct.bio** %2, align 8
  %84 = call i32 @g_std_done(%struct.bio* %83)
  br label %85

85:                                               ; preds = %82, %79, %51, %37, %31
  ret void
}

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
