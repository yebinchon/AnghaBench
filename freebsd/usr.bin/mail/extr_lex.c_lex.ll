; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32* }

@cmdtab = common dso_local global %struct.cmd* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd* @lex(i8* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmd*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 35
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  %14 = getelementptr inbounds %struct.cmd, %struct.cmd* %13, i64 0
  store %struct.cmd* %14, %struct.cmd** %4, align 8
  br label %15

15:                                               ; preds = %30, %12
  %16 = load %struct.cmd*, %struct.cmd** %4, align 8
  %17 = getelementptr inbounds %struct.cmd, %struct.cmd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.cmd*, %struct.cmd** %4, align 8
  %23 = getelementptr inbounds %struct.cmd, %struct.cmd* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @isprefix(i8* %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load %struct.cmd*, %struct.cmd** %4, align 8
  store %struct.cmd* %28, %struct.cmd** %2, align 8
  br label %34

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.cmd*, %struct.cmd** %4, align 8
  %32 = getelementptr inbounds %struct.cmd, %struct.cmd* %31, i32 1
  store %struct.cmd* %32, %struct.cmd** %4, align 8
  br label %15

33:                                               ; preds = %15
  store %struct.cmd* null, %struct.cmd** %2, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.cmd*, %struct.cmd** %2, align 8
  ret %struct.cmd* %35
}

declare dso_local i64 @isprefix(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
