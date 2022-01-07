; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_elf_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_elf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@STB_WEAK = common dso_local global i64 0, align 8
@set_pcpu_list = common dso_local global i32 0, align 4
@set_vnet_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64*)* @elf_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_lookup(i32 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %108

27:                                               ; preds = %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %11, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ELF_ST_BIND(i32 %35)
  %37 = load i64, i64* @STB_LOCAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SHN_UNDEF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %39
  %51 = load i64*, i64** %9, align 8
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %5, align 4
  br label %108

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %108

62:                                               ; preds = %27
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i64*, i64** %9, align 8
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %5, align 4
  br label %108

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @linker_file_lookup_symbol(i32 %79, i8* %80, i32 %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ELF_ST_BIND(i32 %88)
  %90 = load i64, i64* @STB_WEAK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i64*, i64** %9, align 8
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %5, align 4
  br label %108

95:                                               ; preds = %85, %78
  %96 = load i64, i64* %13, align 8
  %97 = call i64 @elf_set_find(i32* @set_pcpu_list, i64 %96, i64* %14, i64* %15)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i64, i64* %15, align 8
  %104 = add nsw i64 %102, %103
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i64, i64* %13, align 8
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %92, %75, %53, %50, %24
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @linker_file_lookup_symbol(i32, i8*, i32) #1

declare dso_local i64 @elf_set_find(i32*, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
