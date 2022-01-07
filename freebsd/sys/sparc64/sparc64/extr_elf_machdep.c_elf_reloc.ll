; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_elf_machdep.c_elf_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_elf_machdep.c_elf_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@ELF_RELOC_RELA = common dso_local global i32 0, align 4
@R_SPARC_NONE = common dso_local global i64 0, align 8
@R_SPARC_RELATIVE = common dso_local global i64 0, align 8
@R_SPARC_JMP_SLOT = common dso_local global i64 0, align 8
@R_SPARC_COPY = common dso_local global i64 0, align 8
@reloc_target_bitmask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"kldload: unexpected relocation type %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"kldload: unaligned relocation type %ld\0A\00", align 1
@R_SPARC_OLO10 = common dso_local global i64 0, align 8
@R_SPARC_HIX22 = common dso_local global i64 0, align 8
@R_SPARC_LOX10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_reloc(i32 %0, i32 %1, i8* %2, i32 %3, i32 (i32, i64, i32, i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32, i64, i32, i32*)*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (i32, i64, i32, i32*)* %4, i32 (i32, i64, i32, i32*)** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ELF_RELOC_RELA, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %183

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  store i32* %35, i32** %13, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ELF64_R_TYPE_ID(i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ELF_R_SYM(i32 %42)
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @R_SPARC_NONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %25
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @R_SPARC_RELATIVE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %25
  store i32 0, i32* %6, align 4
  br label %183

52:                                               ; preds = %47
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @R_SPARC_JMP_SLOT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @R_SPARC_COPY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* @reloc_target_bitmask, align 4
  %63 = call i64 @nitems(i32 %62)
  %64 = icmp sge i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %56, %52
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %66)
  store i32 -1, i32* %6, align 4
  br label %183

68:                                               ; preds = %60
  %69 = load i64, i64* %15, align 8
  %70 = call i64 @RELOC_UNALIGNED(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  store i32 -1, i32* %6, align 4
  br label %183

75:                                               ; preds = %68
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @RELOC_RESOLVE_SYMBOL(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %75
  %83 = load i32 (i32, i64, i32, i32*)*, i32 (i32, i64, i32, i32*)** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* %16, align 8
  %86 = call i32 %83(i32 %84, i64 %85, i32 1, i32* %19)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %183

90:                                               ; preds = %82
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %17, align 4
  %94 = load i64, i64* %15, align 8
  %95 = call i64 @RELOC_BARE_SYMBOL(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @elf_relocaddr(i32 %98, i32 %99)
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* @R_SPARC_OLO10, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %17, align 4
  %108 = and i32 %107, 1023
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ELF64_R_TYPE_DATA(i32 %111)
  %113 = add nsw i32 %108, %112
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %106, %102
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* @R_SPARC_HIX22, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = xor i64 %120, -1
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @RELOC_PC_RELATIVE(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32*, i32** %14, align 8
  %129 = ptrtoint i32* %128 to i32
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i64, i64* %15, align 8
  %134 = call i64 @RELOC_BASE_RELATIVE(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @elf_relocaddr(i32 %137, i32 %140)
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %136, %132
  %143 = load i64, i64* %15, align 8
  %144 = call i32 @RELOC_VALUE_BITMASK(i64 %143)
  store i32 %144, i32* %18, align 4
  %145 = load i64, i64* %15, align 8
  %146 = call i32 @RELOC_VALUE_RIGHTSHIFT(i64 %145)
  %147 = load i32, i32* %17, align 4
  %148 = ashr i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %17, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %17, align 4
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* @R_SPARC_LOX10, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load i32, i32* %17, align 4
  %157 = or i32 %156, 7168
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %155, %142
  %159 = load i64, i64* %15, align 8
  %160 = call i32 @RELOC_TARGET_SIZE(i64 %159)
  %161 = icmp sgt i32 %160, 32
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i32, i32* %18, align 4
  %164 = xor i32 %163, -1
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %182

172:                                              ; preds = %158
  %173 = load i32, i32* %18, align 4
  %174 = xor i32 %173, -1
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %174
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %172, %162
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %89, %72, %65, %51, %24
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i64 @ELF64_R_TYPE_ID(i32) #1

declare dso_local i64 @ELF_R_SYM(i32) #1

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @RELOC_UNALIGNED(i64) #1

declare dso_local i64 @RELOC_RESOLVE_SYMBOL(i64) #1

declare dso_local i64 @RELOC_BARE_SYMBOL(i64) #1

declare dso_local i32 @elf_relocaddr(i32, i32) #1

declare dso_local i32 @ELF64_R_TYPE_DATA(i32) #1

declare dso_local i64 @RELOC_PC_RELATIVE(i64) #1

declare dso_local i64 @RELOC_BASE_RELATIVE(i64) #1

declare dso_local i32 @RELOC_VALUE_BITMASK(i64) #1

declare dso_local i32 @RELOC_VALUE_RIGHTSHIFT(i64) #1

declare dso_local i32 @RELOC_TARGET_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
