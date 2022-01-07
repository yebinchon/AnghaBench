; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_conf_cat_escaped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_conf_cat_escaped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"&#x%X;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_conf_cat_escaped(%struct.sbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %77, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %7
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 38
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 60
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 62
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 39
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sgt i32 %40, 126
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32, %27, %22, %17, %12
  %43 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @sbuf_printf(%struct.sbuf* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  br label %76

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 13
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sgt i32 %65, 31
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %57, %52, %47
  %68 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @sbuf_putc(%struct.sbuf* %68, i8 signext %70)
  br label %75

72:                                               ; preds = %62
  %73 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %74 = call i32 @sbuf_putc(%struct.sbuf* %73, i8 signext 63)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  br label %7

80:                                               ; preds = %7
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8 signext) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
