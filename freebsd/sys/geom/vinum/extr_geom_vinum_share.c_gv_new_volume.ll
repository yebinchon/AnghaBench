; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_volume = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gv_volume* @gv_new_volume(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.gv_volume*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gv_volume*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  store %struct.gv_volume* null, %struct.gv_volume** %3, align 8
  br label %88

21:                                               ; preds = %13
  %22 = call %struct.gv_volume* (...) @gv_alloc_volume()
  store %struct.gv_volume* %22, %struct.gv_volume** %6, align 8
  %23 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %24 = icmp eq %struct.gv_volume* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.gv_volume* null, %struct.gv_volume** %3, align 8
  br label %88

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %71

48:                                               ; preds = %39
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @gv_volstatei(i8* %53)
  %55 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %56 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %67

57:                                               ; preds = %31
  %58 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %59 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlcpy(i32 %60, i8* %65, i32 4)
  br label %67

67:                                               ; preds = %57, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %27

71:                                               ; preds = %45, %27
  %72 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %73 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @strlen(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %85 = call i32 @g_free(%struct.gv_volume* %84)
  store %struct.gv_volume* null, %struct.gv_volume** %3, align 8
  br label %88

86:                                               ; preds = %80
  %87 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  store %struct.gv_volume* %87, %struct.gv_volume** %3, align 8
  br label %88

88:                                               ; preds = %86, %83, %25, %20
  %89 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  ret %struct.gv_volume* %89
}

declare dso_local %struct.gv_volume* @gv_alloc_volume(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gv_volstatei(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @g_free(%struct.gv_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
