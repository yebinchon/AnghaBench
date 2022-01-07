; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_save_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_save_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_FAILED = common dso_local global i8* null, align 8
@_PATH_DEVMEM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@base_addr = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pci_save_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_save_rom(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  %10 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i32, i32* @_PATH_DEVMEM, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 (i8*, i32, ...) @open(i8* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PROT_READ, align 4
  %22 = load i32, i32* @MAP_SHARED, align 4
  %23 = load i32, i32* @MAP_NOCORE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* @base_addr, align 8
  %27 = call i8* @mmap(i32* null, i32 %20, i32 %21, i32 %24, i32 %25, i64 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @O_TRUNC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @O_NOFOLLOW, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @S_IRUSR, align 4
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = or i32 %36, %37
  %39 = call i32 (i8*, i32, ...) @open(i8* %28, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %53

43:                                               ; preds = %19
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @write(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** @MAP_FAILED, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* @base_addr, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @munmap(i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
