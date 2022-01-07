; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_scan_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_scan_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }

@LINELEN = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@DROP = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@BACKGND = common dso_local global i8 0, align 1
@scnkey = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*, i32, i8*, i32)* @scan_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_out(%struct.printer* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.printer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @LINELEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %126, %4
  %25 = load i32, i32* %18, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @HEIGHT, align 4
  %28 = load i32, i32* @DROP, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %23, i64 0
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %104, %31
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  %37 = load i8, i8* %35, align 1
  store i8 %37, i8* %16, align 1
  %38 = call signext i8 @TRC(i8 signext %37)
  store i8 %38, i8* %15, align 1
  %39 = call i32 @dropit(i8 signext %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @HEIGHT, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @DROP, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @WIDTH, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %59, %53
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8, i8* @BACKGND, align 1
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  store i8 %60, i8* %61, align 1
  br label %55

63:                                               ; preds = %55
  br label %81

64:                                               ; preds = %50, %46
  %65 = load i32**, i32*** @scnkey, align 8
  %66 = load i8, i8* %15, align 1
  %67 = sext i8 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %16, align 1
  %80 = call i8* @scnline(i32 %77, i8* %78, i8 signext %79)
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %64, %63
  %82 = load i8*, i8** %14, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %14, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = load %struct.printer*, %struct.printer** %5, align 8
  %96 = getelementptr inbounds %struct.printer, %struct.printer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WIDTH, align 4
  %99 = add nsw i32 %98, 1
  %100 = sdiv i32 %97, %99
  %101 = sub nsw i32 %100, 1
  %102 = icmp sge i32 %93, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92, %87, %81
  br label %111

104:                                              ; preds = %92
  %105 = load i8, i8* @BACKGND, align 1
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i8, i8* @BACKGND, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 %108, i8* %109, align 1
  br label %34

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %114, i8** %9, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @BACKGND, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i8*, i8** %9, align 8
  %122 = icmp uge i8* %121, %23
  br label %123

123:                                              ; preds = %120, %112
  %124 = phi i1 [ false, %112 ], [ %122, %120 ]
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %112

126:                                              ; preds = %123
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  store i8 10, i8* %129, align 1
  %131 = load i32, i32* %6, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = ptrtoint i8* %23 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @write(i32 %131, i8* %23, i32 %136)
  br label %24

138:                                              ; preds = %24
  %139 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dropit(i8 signext) #2

declare dso_local signext i8 @TRC(i8 signext) #2

declare dso_local i8* @scnline(i32, i8*, i8 signext) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
