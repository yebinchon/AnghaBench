; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_general_printc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_general_printc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggent = type { i32 }

@LNBUFF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.aggent*)* @general_printc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @general_printc(i32* %0, %struct.aggent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aggent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.aggent* %1, %struct.aggent** %5, align 8
  %9 = load i32, i32* @LNBUFF, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  br label %13

13:                                               ; preds = %33, %2
  %14 = load i32, i32* @LNBUFF, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @fgets(i8* %12, i32 %14, i32* %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @strlen(i8* %12)
  %21 = mul nsw i32 %20, -1
  %22 = load i32, i32* @SEEK_CUR, align 4
  %23 = call i32 @fseek(i32* %19, i32 %21, i32 %22)
  %24 = call i64 @newfunction(i8* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %34

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.aggent*, %struct.aggent** %5, align 8
  %30 = call i32 @printblock(i32* %28, %struct.aggent* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %35

33:                                               ; preds = %27
  br label %13

34:                                               ; preds = %26, %13
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @newfunction(i8*) #2

declare dso_local i32 @printblock(i32*, %struct.aggent*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
