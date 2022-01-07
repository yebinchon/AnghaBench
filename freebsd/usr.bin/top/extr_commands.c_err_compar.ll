; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_err_compar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_err_compar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @err_compar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_compar(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.errs*, align 8
  %8 = alloca %struct.errs*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.errs*
  store %struct.errs* %10, %struct.errs** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.errs*
  store %struct.errs* %12, %struct.errs** %8, align 8
  %13 = load %struct.errs*, %struct.errs** %7, align 8
  %14 = getelementptr inbounds %struct.errs, %struct.errs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.errs*, %struct.errs** %8, align 8
  %17 = getelementptr inbounds %struct.errs, %struct.errs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.errs*, %struct.errs** %7, align 8
  %23 = getelementptr inbounds %struct.errs, %struct.errs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.errs*, %struct.errs** %8, align 8
  %26 = getelementptr inbounds %struct.errs, %struct.errs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
