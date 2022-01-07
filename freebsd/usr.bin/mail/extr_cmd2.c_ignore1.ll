; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_ignore1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_ignore1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { i32, %struct.ignore** }
%struct.ignore = type { %struct.ignore*, i8* }

@LINESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ignore1(i8** %0, %struct.ignoretab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ignoretab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.ignore*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.ignoretab* %1, %struct.ignoretab** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @LINESIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ignoretab*, %struct.ignoretab** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @igshow(%struct.ignoretab* %22, i8* %23)
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load i8**, i8*** %5, align 8
  store i8** %26, i8*** %10, align 8
  br label %27

27:                                               ; preds = %74, %25
  %28 = load i8**, i8*** %10, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = trunc i64 %15 to i32
  %35 = call i32 @istrncpy(i8* %17, i8* %33, i32 %34)
  %36 = load %struct.ignoretab*, %struct.ignoretab** %6, align 8
  %37 = call i64 @member(i8* %17, %struct.ignoretab* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %74

40:                                               ; preds = %31
  %41 = call i32 @hash(i8* %17)
  store i32 %41, i32* %12, align 4
  %42 = call i8* @calloc(i32 1, i32 16)
  %43 = bitcast i8* %42 to %struct.ignore*
  store %struct.ignore* %43, %struct.ignore** %11, align 8
  %44 = call i64 @strlen(i8* %17)
  %45 = trunc i64 %44 to i32
  %46 = add i32 %45, 1
  %47 = call i8* @calloc(i32 %46, i32 1)
  %48 = load %struct.ignore*, %struct.ignore** %11, align 8
  %49 = getelementptr inbounds %struct.ignore, %struct.ignore* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ignore*, %struct.ignore** %11, align 8
  %51 = getelementptr inbounds %struct.ignore, %struct.ignore* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcpy(i8* %52, i8* %17)
  %54 = load %struct.ignoretab*, %struct.ignoretab** %6, align 8
  %55 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %54, i32 0, i32 1
  %56 = load %struct.ignore**, %struct.ignore*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ignore*, %struct.ignore** %56, i64 %58
  %60 = load %struct.ignore*, %struct.ignore** %59, align 8
  %61 = load %struct.ignore*, %struct.ignore** %11, align 8
  %62 = getelementptr inbounds %struct.ignore, %struct.ignore* %61, i32 0, i32 0
  store %struct.ignore* %60, %struct.ignore** %62, align 8
  %63 = load %struct.ignore*, %struct.ignore** %11, align 8
  %64 = load %struct.ignoretab*, %struct.ignoretab** %6, align 8
  %65 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %64, i32 0, i32 1
  %66 = load %struct.ignore**, %struct.ignore*** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ignore*, %struct.ignore** %66, i64 %68
  store %struct.ignore* %63, %struct.ignore** %69, align 8
  %70 = load %struct.ignoretab*, %struct.ignoretab** %6, align 8
  %71 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %40, %39
  %75 = load i8**, i8*** %10, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %10, align 8
  br label %27

77:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %21
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @igshow(%struct.ignoretab*, i8*) #2

declare dso_local i32 @istrncpy(i8*, i8*, i32) #2

declare dso_local i64 @member(i8*, %struct.ignoretab*) #2

declare dso_local i32 @hash(i8*) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
