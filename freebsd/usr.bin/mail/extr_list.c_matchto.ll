; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_matchto.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_matchto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@message = common dso_local global %struct.message* null, align 8
@to_fields = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @matchto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchto(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.message*, %struct.message** @message, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.message, %struct.message* %17, i64 %20
  store %struct.message* %21, %struct.message** %6, align 8
  %22 = load i8**, i8*** @to_fields, align 8
  store i8** %22, i8*** %8, align 8
  br label %23

23:                                               ; preds = %41, %16
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.message*, %struct.message** %6, align 8
  %31 = call i8* @hfield(i8* %29, %struct.message* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32* @strcasestr(i8* %35, i8* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i8**, i8*** %8, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %8, align 8
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @hfield(i8*, %struct.message*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
