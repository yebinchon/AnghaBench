; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_igshow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_igshow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { i32, %struct.ignore** }
%struct.ignore = type { i32, %struct.ignore* }

@.str = private unnamed_addr constant [31 x i8] c"No fields currently being %s.\0A\00", align 1
@HSHSIZE = common dso_local global i32 0, align 4
@igcomp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igshow(%struct.ignoretab* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ignoretab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ignore*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.ignoretab* %0, %struct.ignoretab** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ignoretab*, %struct.ignoretab** %4, align 8
  %11 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.ignoretab*, %struct.ignoretab** %4, align 8
  %19 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @salloc(i32 %24)
  %26 = inttoptr i64 %25 to i8**
  store i8** %26, i8*** %9, align 8
  %27 = load i8**, i8*** %9, align 8
  store i8** %27, i8*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %56, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HSHSIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.ignoretab*, %struct.ignoretab** %4, align 8
  %34 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %33, i32 0, i32 1
  %35 = load %struct.ignore**, %struct.ignore*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ignore*, %struct.ignore** %35, i64 %37
  %39 = load %struct.ignore*, %struct.ignore** %38, align 8
  store %struct.ignore* %39, %struct.ignore** %7, align 8
  br label %40

40:                                               ; preds = %51, %32
  %41 = load %struct.ignore*, %struct.ignore** %7, align 8
  %42 = icmp ne %struct.ignore* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.ignore*, %struct.ignore** %7, align 8
  %45 = getelementptr inbounds %struct.ignore, %struct.ignore* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8**, i8*** %8, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load %struct.ignore*, %struct.ignore** %7, align 8
  %53 = getelementptr inbounds %struct.ignore, %struct.ignore* %52, i32 0, i32 1
  %54 = load %struct.ignore*, %struct.ignore** %53, align 8
  store %struct.ignore* %54, %struct.ignore** %7, align 8
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load i8**, i8*** %8, align 8
  store i8* null, i8** %60, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load %struct.ignoretab*, %struct.ignoretab** %4, align 8
  %63 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @igcomp, align 4
  %66 = call i32 @qsort(i8** %61, i32 %64, i32 8, i32 %65)
  %67 = load i8**, i8*** %9, align 8
  store i8** %67, i8*** %8, align 8
  br label %68

68:                                               ; preds = %76, %59
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i8**, i8*** %8, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i8**, i8*** %8, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %8, align 8
  br label %68

79:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @salloc(i32) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
