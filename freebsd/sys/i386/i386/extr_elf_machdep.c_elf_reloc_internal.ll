; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elf_machdep.c_elf_reloc_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elf_machdep.c_elf_reloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown reloc type %d\0A\00", align 1
@ERI_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"kldload: unexpected R_COPY relocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"kldload: unexpected relocation type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i32, i32 (i32, i32, i32, i64*)*, i32)* @elf_reloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_reloc_internal(i32 %0, i64 %1, i8* %2, i32 %3, i32 (i32, i32, i32, i64*)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i32, i32, i32, i64*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (i32, i32, i32, i64*)* %4, i32 (i32, i32, i32, i64*)** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %62 [
    i32 136, label %23
    i32 135, label %42
  ]

23:                                               ; preds = %6
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %19, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %14, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ELF_R_TYPE(i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ELF_R_SYM(i32 %40)
  store i32 %41, i32* %18, align 4
  br label %65

42:                                               ; preds = %6
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %20, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %14, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ELF_R_TYPE(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ELF_R_SYM(i32 %60)
  store i32 %61, i32* %18, align 4
  br label %65

62:                                               ; preds = %6
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %42, %23
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ERI_LOCAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32, i32* %17, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %16, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64 @elf_relocaddr(i32 %74, i64 %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64*, i64** %14, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i64, i64* %15, align 8
  %85 = load i64*, i64** %14, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %73
  br label %87

87:                                               ; preds = %86, %70
  store i32 0, i32* %7, align 4
  br label %173

88:                                               ; preds = %65
  %89 = load i32, i32* %17, align 4
  switch i32 %89, label %169 [
    i32 130, label %90
    i32 134, label %91
    i32 129, label %111
    i32 133, label %134
    i32 132, label %136
    i32 128, label %153
    i32 131, label %154
  ]

90:                                               ; preds = %88
  br label %172

91:                                               ; preds = %88
  %92 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 %92(i32 %93, i32 %94, i32 1, i64* %15)
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %173

99:                                               ; preds = %91
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %15, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %15, align 8
  %103 = load i64*, i64** %14, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i64, i64* %15, align 8
  %109 = load i64*, i64** %14, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  br label %172

111:                                              ; preds = %88
  %112 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %18, align 4
  %115 = call i32 %112(i32 %113, i32 %114, i32 1, i64* %15)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 -1, i32* %7, align 4
  br label %173

119:                                              ; preds = %111
  %120 = load i64, i64* %16, align 8
  %121 = load i64*, i64** %14, align 8
  %122 = ptrtoint i64* %121 to i64
  %123 = sub nsw i64 %120, %122
  %124 = load i64, i64* %15, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %15, align 8
  %126 = load i64*, i64** %14, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load i64, i64* %15, align 8
  %132 = load i64*, i64** %14, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %119
  br label %172

134:                                              ; preds = %88
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %173

136:                                              ; preds = %88
  %137 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %12, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %18, align 4
  %140 = call i32 %137(i32 %138, i32 %139, i32 1, i64* %15)
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 -1, i32* %7, align 4
  br label %173

144:                                              ; preds = %136
  %145 = load i64*, i64** %14, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %15, align 8
  %151 = load i64*, i64** %14, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %144
  br label %172

153:                                              ; preds = %88
  br label %172

154:                                              ; preds = %88
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %16, align 8
  %157 = add nsw i64 %155, %156
  store i64 %157, i64* %15, align 8
  %158 = load i64, i64* %15, align 8
  %159 = inttoptr i64 %158 to i64 ()*
  %160 = call i64 %159()
  store i64 %160, i64* %15, align 8
  %161 = load i64*, i64** %14, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load i64, i64* %15, align 8
  %167 = load i64*, i64** %14, align 8
  store i64 %166, i64* %167, align 8
  br label %168

168:                                              ; preds = %165, %154
  br label %172

169:                                              ; preds = %88
  %170 = load i32, i32* %17, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  store i32 -1, i32* %7, align 4
  br label %173

172:                                              ; preds = %168, %153, %152, %133, %110, %90
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %172, %169, %143, %134, %118, %98, %87
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @elf_relocaddr(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
