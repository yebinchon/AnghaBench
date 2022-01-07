; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_kvmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_kvmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@kvmd = common dso_local global i32* null, align 8
@nlistf = common dso_local global i32 0, align 4
@memf = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"kvm not available: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32*, i32** @kvmd, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

12:                                               ; preds = %0
  %13 = load i32, i32* @nlistf, align 4
  %14 = load i32, i32* @memf, align 4
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32* @kvm_openfiles(i32 %13, i32 %14, i32* null, i32 %15, i8* %8)
  store i32* %16, i32** @kvmd, align 8
  %17 = call i32 (...) @getgid()
  %18 = call i64 @setgid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @xo_err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i32*, i32** @kvmd, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @xo_warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25, %11
  %29 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kvm_openfiles(i32, i32, i32*, i32, i8*) #2

declare dso_local i64 @setgid(i32) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i32 @xo_err(i32, i8*) #2

declare dso_local i32 @xo_warnx(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
