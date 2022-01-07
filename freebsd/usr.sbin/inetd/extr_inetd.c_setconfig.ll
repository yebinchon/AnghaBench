; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_setconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_setconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fconfig = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setconfig() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @fconfig, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32*, i32** @fconfig, align 8
  %6 = load i32, i32* @SEEK_SET, align 4
  %7 = call i32 @fseek(i32* %5, i64 0, i32 %6)
  store i32 1, i32* %1, align 4
  br label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @CONFIG, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** @fconfig, align 8
  %11 = load i32*, i32** @fconfig, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %8, %4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
