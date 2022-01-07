; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_describe_parse_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_describe_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_vendordata_size = common dso_local global i32 0, align 4
@pci_vendordata = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%x\09%80[^\0A]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i8**)* @pci_describe_parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_describe_parse_line(i8** %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32*, i32** %8, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i8**, i8*** %9, align 8
  %17 = load i8*, i8** %16, align 8
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %85, %4
  %19 = load i32, i32* @pci_vendordata_size, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** @pci_vendordata, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sub nsw i64 %20, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i8*, i8** %10, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  store i32 1, i32* %5, align 4
  br label %116

33:                                               ; preds = %18
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 9
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %40, i8* %42)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %86

46:                                               ; preds = %38, %33
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %53, i8* %55)
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %86

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i1 [ false, %60 ], [ %67, %65 ]
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %11, align 4
  br label %60

75:                                               ; preds = %68
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %80, %75
  br label %18

86:                                               ; preds = %58, %45
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 10
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %93, 0
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i1 [ false, %87 ], [ %94, %92 ]
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %11, align 4
  br label %87

102:                                              ; preds = %95
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  br label %113

113:                                              ; preds = %110, %107, %102
  %114 = load i8*, i8** %10, align 8
  %115 = load i8**, i8*** %6, align 8
  store i8* %114, i8** %115, align 8
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
