; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_register_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_register_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp = type { i32, %struct.fp*, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@fp_head = common dso_local global %struct.fp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_file(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fp*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.fp* @malloc(i32 32)
  store %struct.fp* %8, %struct.fp** %7, align 8
  %9 = icmp eq %struct.fp* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.fp*, %struct.fp** %7, align 8
  %15 = getelementptr inbounds %struct.fp, %struct.fp* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.fp*, %struct.fp** %7, align 8
  %18 = getelementptr inbounds %struct.fp, %struct.fp* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.fp*, %struct.fp** %7, align 8
  %21 = getelementptr inbounds %struct.fp, %struct.fp* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fp*, %struct.fp** @fp_head, align 8
  %23 = load %struct.fp*, %struct.fp** %7, align 8
  %24 = getelementptr inbounds %struct.fp, %struct.fp* %23, i32 0, i32 1
  store %struct.fp* %22, %struct.fp** %24, align 8
  %25 = load %struct.fp*, %struct.fp** %7, align 8
  store %struct.fp* %25, %struct.fp** @fp_head, align 8
  ret void
}

declare dso_local %struct.fp* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
