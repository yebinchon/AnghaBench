; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i8*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BIO_GETATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bio_cmd=0x%x bio_attribute=%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"s%d\00", align 1
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_slice_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_slice_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca [8 x i8], align 1
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BIO_GETATTR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %17, i8* %25)
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %15
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %31
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %40, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strlcat(i8* %51, i8* %52, i32 %55)
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %39
  %62 = load i64, i64* @EFAULT, align 8
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %39
  br label %66

66:                                               ; preds = %65, %31, %15
  %67 = load %struct.bio*, %struct.bio** %2, align 8
  %68 = call i32 @g_std_done(%struct.bio* %67)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
