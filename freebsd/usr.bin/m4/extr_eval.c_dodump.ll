; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dodump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dodump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @dodump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dodump(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.macro_definition*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  store i32 2, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i8**, i8*** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.macro_definition* @lookup_macro_definition(i8* %19)
  store %struct.macro_definition* %20, %struct.macro_definition** %6, align 8
  %21 = icmp ne %struct.macro_definition* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i8**, i8*** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.macro_definition*, %struct.macro_definition** %6, align 8
  %29 = call i32 @dump_one_def(i8* %27, %struct.macro_definition* %28)
  br label %30

30:                                               ; preds = %22, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  br label %37

35:                                               ; preds = %2
  %36 = call i32 @macro_for_all(i32 (i8*, %struct.macro_definition*)* @dump_one_def)
  br label %37

37:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.macro_definition* @lookup_macro_definition(i8*) #1

declare dso_local i32 @dump_one_def(i8*, %struct.macro_definition*) #1

declare dso_local i32 @macro_for_all(i32 (i8*, %struct.macro_definition*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
