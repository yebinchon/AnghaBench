; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_schema_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_schema_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOV_SCHEMA_HASDEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32)* @pci_iov_schema_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_iov_schema_int(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %13 = call i32* @nvlist_create(i32 %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @nvlist_set_error(i32* %17, i32 %18)
  br label %40

20:                                               ; preds = %5
  %21 = load i32*, i32** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @pci_iov_schema_add_type(i32* %21, i8* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @nvlist_add_number(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pci_iov_schema_add_required(i32* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @nvlist_move_nvlist(i32* %36, i8* %37, i32* %38)
  br label %40

40:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_set_error(i32*, i32) #1

declare dso_local i32 @pci_iov_schema_add_type(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @pci_iov_schema_add_required(i32*, i32) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
