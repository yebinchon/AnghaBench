; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_isign.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_isign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { i64 }

@LINESIZE = common dso_local global i32 0, align 4
@ignoreall = common dso_local global %struct.ignoretab* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isign(i8* %0, %struct.ignoretab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ignoretab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ignoretab* %1, %struct.ignoretab** %5, align 8
  %9 = load i32, i32* @LINESIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.ignoretab*, %struct.ignoretab** %5, align 8
  %14 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %15 = icmp eq %struct.ignoretab* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = trunc i64 %10 to i32
  %20 = call i32 @istrncpy(i8* %12, i8* %18, i32 %19)
  %21 = load %struct.ignoretab*, %struct.ignoretab** %5, align 8
  %22 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %21, i64 1
  %23 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.ignoretab*, %struct.ignoretab** %5, align 8
  %28 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %27, i64 1
  %29 = call i32 @member(i8* %12, %struct.ignoretab* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %36

33:                                               ; preds = %17
  %34 = load %struct.ignoretab*, %struct.ignoretab** %5, align 8
  %35 = call i32 @member(i8* %12, %struct.ignoretab* %34)
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %26, %16
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @istrncpy(i8*, i8*, i32) #2

declare dso_local i32 @member(i8*, %struct.ignoretab*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
