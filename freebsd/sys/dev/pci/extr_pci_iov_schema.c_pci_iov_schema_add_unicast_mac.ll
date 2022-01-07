; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_schema_add_unicast_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_schema_add_unicast_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unicast-mac\00", align 1
@IOV_SCHEMA_HASDEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_iov_schema_add_unicast_mac(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %11 = call i32* @nvlist_create(i32 %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call i32 @nvlist_set_error(i32* %15, i32 %16)
  br label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @pci_iov_schema_add_type(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %29 = call i32 @nvlist_add_binary(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pci_iov_schema_add_required(i32* %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @nvlist_move_nvlist(i32* %34, i8* %35, i32* %36)
  br label %38

38:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_set_error(i32*, i32) #1

declare dso_local i32 @pci_iov_schema_add_type(i32*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pci_iov_schema_add_required(i32*, i32) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
