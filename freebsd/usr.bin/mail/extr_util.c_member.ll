; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { %struct.ignore** }
%struct.ignore = type { i8*, %struct.ignore* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @member(i8* %0, %struct.ignoretab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ignoretab*, align 8
  %6 = alloca %struct.ignore*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ignoretab* %1, %struct.ignoretab** %5, align 8
  %7 = load %struct.ignoretab*, %struct.ignoretab** %5, align 8
  %8 = getelementptr inbounds %struct.ignoretab, %struct.ignoretab* %7, i32 0, i32 0
  %9 = load %struct.ignore**, %struct.ignore*** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @hash(i8* %10)
  %12 = getelementptr inbounds %struct.ignore*, %struct.ignore** %9, i64 %11
  %13 = load %struct.ignore*, %struct.ignore** %12, align 8
  store %struct.ignore* %13, %struct.ignore** %6, align 8
  br label %14

14:                                               ; preds = %36, %2
  %15 = load %struct.ignore*, %struct.ignore** %6, align 8
  %16 = icmp ne %struct.ignore* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load %struct.ignore*, %struct.ignore** %6, align 8
  %19 = getelementptr inbounds %struct.ignore, %struct.ignore* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.ignore*, %struct.ignore** %6, align 8
  %29 = getelementptr inbounds %struct.ignore, %struct.ignore* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @equal(i8* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %41

35:                                               ; preds = %27, %17
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.ignore*, %struct.ignore** %6, align 8
  %38 = getelementptr inbounds %struct.ignore, %struct.ignore* %37, i32 0, i32 1
  %39 = load %struct.ignore*, %struct.ignore** %38, align 8
  store %struct.ignore* %39, %struct.ignore** %6, align 8
  br label %14

40:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @hash(i8*) #1

declare dso_local i64 @equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
