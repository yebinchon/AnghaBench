; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_dsdt_save_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_dsdt_save_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dsdt_save_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsdt_save_file(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @S_IRUSR, align 4
  %14 = load i32, i32* @S_IWUSR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRGRP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S_IROTH, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_TRUNC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @open(i8* %20, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @write_dsdt(i32 %33, i32* %34, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write_dsdt(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
