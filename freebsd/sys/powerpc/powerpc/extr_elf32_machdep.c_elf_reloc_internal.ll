; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf32_machdep.c_elf_reloc_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf32_machdep.c_elf_reloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"PPC only supports RELA relocations\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"elf_reloc: unknown relocation mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"kldload: unexpected relocation type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32, i32 (i32, i32, i32, i32*)*)* @elf_reloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_reloc_internal(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 (i32, i32, i32, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32, i32, i32, i32*)*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i32, i32, i32, i32*)* %5, i32 (i32, i32, i32, i32*)** %13, align 8
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %55 [
    i32 134, label %23
    i32 133, label %25
  ]

23:                                               ; preds = %6
  %24 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %58

25:                                               ; preds = %6
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %20, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %29, %33
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %37, %41
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %15, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ELF_R_TYPE(i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ELF_R_SYM(i32 %53)
  store i32 %54, i32* %19, align 4
  br label %58

55:                                               ; preds = %6
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %25, %23
  %59 = load i32, i32* %18, align 4
  switch i32 %59, label %148 [
    i32 129, label %60
    i32 130, label %61
    i32 131, label %76
    i32 132, label %105
    i32 128, label %141
  ]

60:                                               ; preds = %58
  br label %151

61:                                               ; preds = %58
  %62 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 %62(i32 %63, i32 %64, i32 1, i32* %16)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 -1, i32* %7, align 4
  br label %152

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @elf_relocaddr(i32 %70, i32 %73)
  %75 = load i32*, i32** %14, align 8
  store i32 %74, i32* %75, align 4
  br label %151

76:                                               ; preds = %58
  %77 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 %77(i32 %78, i32 %79, i32 1, i32* %16)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 -1, i32* %7, align 4
  br label %152

84:                                               ; preds = %76
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %88, %84
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @elf_relocaddr(i32 %97, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = and i32 %102, 65535
  %104 = load i32*, i32** %15, align 8
  store i32 %103, i32* %104, align 4
  br label %151

105:                                              ; preds = %58
  %106 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i32 %106(i32 %107, i32 %108, i32 1, i32* %16)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 -1, i32* %7, align 4
  br label %152

113:                                              ; preds = %105
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp sle i32 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %123, %117, %113
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @elf_relocaddr(i32 %126, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = ashr i32 %131, 16
  %133 = load i32, i32* %16, align 4
  %134 = and i32 %133, 32768
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = add nsw i32 %132, %137
  %139 = and i32 %138, 65535
  %140 = load i32*, i32** %15, align 8
  store i32 %139, i32* %140, align 4
  br label %151

141:                                              ; preds = %58
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %143, %144
  %146 = call i32 @elf_relocaddr(i32 %142, i32 %145)
  %147 = load i32*, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  br label %151

148:                                              ; preds = %58
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  store i32 -1, i32* %7, align 4
  br label %152

151:                                              ; preds = %141, %125, %96, %69, %60
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %151, %148, %112, %83, %68
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @elf_relocaddr(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
