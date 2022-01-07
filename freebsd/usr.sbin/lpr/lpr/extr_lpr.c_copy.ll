; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpr/extr_lpr.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpr/extr_lpr.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@format = common dso_local global i8 0, align 1
@title = common dso_local global i8* null, align 8
@ncopies = common dso_local global i32 0, align 4
@dfname = common dso_local global i8* null, align 8
@inchar = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: %s: temp file write error\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: %s: copy file is too large\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: %s: empty input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@nact = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*, i32, i8*)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy(%struct.printer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.printer* %0, %struct.printer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = load i8, i8* @format, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 112
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i8*, i8** @title, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** @title, align 8
  br label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8* [ %24, %23 ], [ %26, %25 ]
  %29 = call i32 @card(i8 signext 84, i8* %28)
  br label %30

30:                                               ; preds = %27, %3
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ncopies, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8, i8* @format, align 1
  %37 = load i8*, i8** @dfname, align 8
  %38 = load i32, i32* @inchar, align 4
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = call i32 @card(i8 signext %36, i8* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i8*, i8** @dfname, align 8
  %48 = load i32, i32* @inchar, align 4
  %49 = sub nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = call i32 @card(i8 signext 85, i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @card(i8 signext 78, i8* %53)
  %55 = load i8*, i8** @dfname, align 8
  %56 = call i32 @nfile(i8* %55)
  store i32 %56, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %100, %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BUFSIZ, align 4
  %60 = call i32 @read(i32 %58, i8* %16, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @write(i32 %63, i8* %16, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i8*, i8** @progname, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70)
  br label %101

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @BUFSIZ, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  %80 = load i32, i32* @BUFSIZ, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load %struct.printer*, %struct.printer** %4, align 8
  %86 = getelementptr inbounds %struct.printer, %struct.printer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.printer*, %struct.printer** %4, align 8
  %92 = getelementptr inbounds %struct.printer, %struct.printer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** @progname, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %97)
  br label %101

99:                                               ; preds = %89, %79
  br label %100

100:                                              ; preds = %99, %72
  br label %57

101:                                              ; preds = %95, %68, %57
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i8*, i8** @progname, align 8
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  br label %116

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i8* [ %114, %113 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %115 ]
  %118 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %117)
  br label %122

119:                                              ; preds = %106, %101
  %120 = load i32, i32* @nact, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @nact, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @card(i8 signext, i8*) #2

declare dso_local i32 @nfile(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
