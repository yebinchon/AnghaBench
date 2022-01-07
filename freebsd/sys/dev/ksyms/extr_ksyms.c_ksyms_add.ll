; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ksyms_softc = type { i32 }
%struct.toffsets = type { i64, i64, i64, i64, %struct.ksyms_softc* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@SYMBLKSZ = common dso_local global i32 0, align 4
@M_KSYMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MOD_SLOCK = common dso_local global i32 0, align 4
@MOD_SUNLOCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @ksyms_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksyms_add(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ksyms_softc*, align 8
  %8 = alloca %struct.toffsets*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @SYMBLKSZ, align 4
  %22 = load i32, i32* @M_KSYMS, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i8* @malloc(i32 %21, i32 %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.toffsets*
  store %struct.toffsets* %26, %struct.toffsets** %8, align 8
  %27 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %28 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %27, i32 0, i32 4
  %29 = load %struct.ksyms_softc*, %struct.ksyms_softc** %28, align 8
  store %struct.ksyms_softc* %29, %struct.ksyms_softc** %7, align 8
  %30 = load i32, i32* @MOD_SLOCK, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i64 @LINKER_SYMTAB_GET(%struct.TYPE_12__* %31, %struct.TYPE_13__** %9)
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = call i64 @LINKER_STRTAB_GET(%struct.TYPE_12__* %33, i8** %11)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %13, align 8
  %36 = mul i64 %35, 16
  store i64 %36, i64* %15, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %20, align 4
  br label %42

42:                                               ; preds = %136, %2
  %43 = load i64, i64* %15, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %144

45:                                               ; preds = %42
  %46 = load i32, i32* @SYMBLKSZ, align 4
  %47 = load i64, i64* %15, align 8
  %48 = call i64 @min(i32 %46, i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @bcopy(%struct.TYPE_13__* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = udiv i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %95, %45
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %64 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %65
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = ptrtoint %struct.TYPE_13__* %82 to i32
  %84 = call i64 @LINKER_SYMBOL_VALUES(%struct.TYPE_12__* %78, i32 %83, %struct.TYPE_11__* %16)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %86, %77, %62
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %101 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @MOD_SUNLOCK, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @M_KSYMS, align 4
  %108 = call i32 @free(i8* %106, i32 %107)
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %3, align 4
  br label %180

110:                                              ; preds = %98
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %113 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load %struct.ksyms_softc*, %struct.ksyms_softc** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %119 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @ksyms_emit(%struct.ksyms_softc* %116, i8* %117, i64 %120, i64 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %125 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %110
  %131 = load i32, i32* @MOD_SUNLOCK, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* @M_KSYMS, align 4
  %134 = call i32 @free(i8* %132, i32 %133)
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %3, align 4
  br label %180

136:                                              ; preds = %110
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %139
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %9, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %15, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %15, align 8
  br label %42

144:                                              ; preds = %42
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* @M_KSYMS, align 4
  %147 = call i32 @free(i8* %145, i32 %146)
  %148 = load i32, i32* @MOD_SUNLOCK, align 4
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %151 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ugt i64 %149, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %3, align 4
  br label %180

156:                                              ; preds = %144
  %157 = load i64, i64* %14, align 8
  %158 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %159 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load %struct.ksyms_softc*, %struct.ksyms_softc** %7, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %165 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = call i32 @ksyms_emit(%struct.ksyms_softc* %162, i8* %163, i64 %166, i64 %167)
  store i32 %168, i32* %17, align 4
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %171 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.toffsets*, %struct.toffsets** %8, align 8
  %176 = getelementptr inbounds %struct.toffsets, %struct.toffsets* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %156, %154, %130, %104
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @LINKER_SYMTAB_GET(%struct.TYPE_12__*, %struct.TYPE_13__**) #1

declare dso_local i64 @LINKER_STRTAB_GET(%struct.TYPE_12__*, i8**) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @bcopy(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i64 @LINKER_SYMBOL_VALUES(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ksyms_emit(%struct.ksyms_softc*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
