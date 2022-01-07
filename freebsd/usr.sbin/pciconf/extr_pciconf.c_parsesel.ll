; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_parsesel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_parsesel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcisel = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot parse selector %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcisel*, i8*)* @parsesel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsesel(%struct.pcisel* noalias sret %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca i32, align 4
  store i8* %1, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 64)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %108

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %49, %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ false, %24 ], [ %31, %29 ]
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strtoul(i8* %35, i8** %5, i32 10)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %39
  store i64 %36, i64* %40, align 8
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %46, %34
  br label %24

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi i64 [ %66, %61 ], [ 0, %67 ]
  %70 = getelementptr inbounds %struct.pcisel, %struct.pcisel* %0, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %76
  %78 = load i64, i64* %77, align 8
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i64 [ %78, %73 ], [ 0, %79 ]
  %82 = getelementptr inbounds %struct.pcisel, %struct.pcisel* %0, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %85
  %93 = phi i64 [ %90, %85 ], [ 0, %91 ]
  %94 = getelementptr inbounds %struct.pcisel, %struct.pcisel* %0, i32 0, i32 2
  store i64 %93, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  br label %104

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i64 [ %102, %97 ], [ 0, %103 ]
  %106 = getelementptr inbounds %struct.pcisel, %struct.pcisel* %0, i32 0, i32 3
  store i64 %105, i64* %106, align 8
  br label %111

107:                                              ; preds = %53, %50
  br label %108

108:                                              ; preds = %107, %17
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %104
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
