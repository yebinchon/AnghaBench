; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofwdump.c_ofw_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofwdump.c_ofw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32, i8*, i32, i32)* @ofw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_dump(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ofw_root(i32 %19)
  br label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @ofw_finddevice(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %20, %18 ], [ %24, %21 ]
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @ofw_dump_node(i32 %27, i32 %28, i32 0, i32 %29, i32 %30, i8* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @ofw_root(i32) #1

declare dso_local i32 @ofw_finddevice(i32, i8*) #1

declare dso_local i32 @ofw_dump_node(i32, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
