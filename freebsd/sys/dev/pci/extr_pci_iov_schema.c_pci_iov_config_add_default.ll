; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_config_add_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_config_add_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected nvlist type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @pci_iov_config_add_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_iov_config_add_default(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @nvlist_exists_binary(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @nvlist_get_binary(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %8)
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @nvlist_add_binary(i32* %15, i8* %16, i8* %17, i64 %18)
  br label %66

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @nvlist_exists_bool(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @nvlist_get_bool(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @nvlist_add_bool(i32* %25, i8* %26, i32 %28)
  br label %65

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @nvlist_exists_number(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @nvlist_get_number(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @nvlist_add_number(i32* %35, i8* %36, i32 %38)
  br label %64

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @nvlist_exists_nvlist(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @nvlist_get_nvlist(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @nvlist_add_nvlist(i32* %45, i8* %46, i32 %48)
  br label %63

50:                                               ; preds = %40
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @nvlist_exists_string(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @nvlist_get_string(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @nvlist_add_string(i32* %55, i8* %56, i32 %58)
  br label %62

60:                                               ; preds = %50
  %61 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %24
  br label %66

66:                                               ; preds = %65, %12
  ret void
}

declare dso_local i64 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i64) #1

declare dso_local i64 @nvlist_exists_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_bool(i32*, i8*) #1

declare dso_local i64 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i64 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i64 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
