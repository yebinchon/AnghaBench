; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_border_color.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_border_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"invalid color '%s'\00", align 1
@KDSBORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ioctl(KD_SBORDER)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_border_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_border_color(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @get_color_number(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 (...) @revert()
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @KDSBORDER, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ioctl(i32 0, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call i32 (...) @revert()
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @get_color_number(i8*) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
