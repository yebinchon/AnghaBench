; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_casueword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_casueword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.casueword_arg0 = type { i32, i8*, i8* }

@casueword_slow0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @casueword(i8** %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.casueword_arg0, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.casueword_arg0, %struct.casueword_arg0* %10, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds %struct.casueword_arg0, %struct.casueword_arg0* %10, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = ptrtoint i8** %16 to i32
  %18 = load i32, i32* @casueword_slow0, align 4
  %19 = call i32 @cp_slow0(i32 %17, i32 4, i32 1, i32 %18, %struct.casueword_arg0* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.casueword_arg0, %struct.casueword_arg0* %10, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %8, align 8
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.casueword_arg0, %struct.casueword_arg0* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @cp_slow0(i32, i32, i32, i32, %struct.casueword_arg0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
