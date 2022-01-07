; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_load_dependencies.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_load_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32 }
%struct.mod_metadata = type { i64, i8*, %struct.mod_depend* }
%struct.mod_depend = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.mod_version = type { i32 }

@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@linker_kernel_file = common dso_local global %struct.TYPE_13__* null, align 8
@MDT_SETNAME = common dso_local global i32 0, align 4
@MDT_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"interface %s.%d already present in the KLD '%s'!\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MDT_DEPEND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"KLD %s: depends on %s - not available or version mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linker_load_dependencies(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.mod_metadata**, align 8
  %6 = alloca %struct.mod_metadata**, align 8
  %7 = alloca %struct.mod_metadata**, align 8
  %8 = alloca %struct.mod_metadata**, align 8
  %9 = alloca %struct.mod_metadata*, align 8
  %10 = alloca %struct.mod_metadata*, align 8
  %11 = alloca %struct.mod_depend*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @SA_XLOCKED, align 4
  %18 = call i32 @sx_assert(i32* @kld_sx, i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @linker_kernel_file, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @linker_kernel_file, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @linker_kernel_file, align 8
  %28 = call i32 @linker_file_add_dependency(%struct.TYPE_13__* %26, %struct.TYPE_13__* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %2, align 4
  br label %187

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load i32, i32* @MDT_SETNAME, align 4
  %37 = call i64 @linker_file_lookup_set(%struct.TYPE_13__* %35, i32 %36, %struct.mod_metadata*** %5, %struct.mod_metadata*** %6, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %187

40:                                               ; preds = %34
  %41 = load %struct.mod_metadata**, %struct.mod_metadata*** %5, align 8
  store %struct.mod_metadata** %41, %struct.mod_metadata*** %7, align 8
  br label %42

42:                                               ; preds = %81, %40
  %43 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %44 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %45 = icmp ult %struct.mod_metadata** %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %48 = load %struct.mod_metadata*, %struct.mod_metadata** %47, align 8
  store %struct.mod_metadata* %48, %struct.mod_metadata** %9, align 8
  %49 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %50 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MDT_VERSION, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %81

55:                                               ; preds = %46
  %56 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %57 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %13, align 8
  %59 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %60 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %59, i32 0, i32 2
  %61 = load %struct.mod_depend*, %struct.mod_depend** %60, align 8
  %62 = bitcast %struct.mod_depend* %61 to %struct.mod_version*
  %63 = getelementptr inbounds %struct.mod_version, %struct.mod_version* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call %struct.TYPE_12__* @modlist_lookup(i8* %65, i32 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %55
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72, i8* %77)
  %79 = load i32, i32* @EEXIST, align 4
  store i32 %79, i32* %2, align 4
  br label %187

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %83 = getelementptr inbounds %struct.mod_metadata*, %struct.mod_metadata** %82, i32 1
  store %struct.mod_metadata** %83, %struct.mod_metadata*** %7, align 8
  br label %42

84:                                               ; preds = %42
  %85 = load %struct.mod_metadata**, %struct.mod_metadata*** %5, align 8
  store %struct.mod_metadata** %85, %struct.mod_metadata*** %7, align 8
  br label %86

86:                                               ; preds = %173, %84
  %87 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %88 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %89 = icmp ult %struct.mod_metadata** %87, %88
  br i1 %89, label %90, label %176

90:                                               ; preds = %86
  %91 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %92 = load %struct.mod_metadata*, %struct.mod_metadata** %91, align 8
  store %struct.mod_metadata* %92, %struct.mod_metadata** %9, align 8
  %93 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %94 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MDT_DEPEND, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %173

99:                                               ; preds = %90
  %100 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %101 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %13, align 8
  %103 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %104 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %103, i32 0, i32 2
  %105 = load %struct.mod_depend*, %struct.mod_depend** %104, align 8
  store %struct.mod_depend* %105, %struct.mod_depend** %11, align 8
  store i8* null, i8** %14, align 8
  %106 = load %struct.mod_metadata**, %struct.mod_metadata*** %5, align 8
  store %struct.mod_metadata** %106, %struct.mod_metadata*** %8, align 8
  br label %107

107:                                              ; preds = %130, %99
  %108 = load %struct.mod_metadata**, %struct.mod_metadata*** %8, align 8
  %109 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %110 = icmp ult %struct.mod_metadata** %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.mod_metadata**, %struct.mod_metadata*** %8, align 8
  %113 = load %struct.mod_metadata*, %struct.mod_metadata** %112, align 8
  store %struct.mod_metadata* %113, %struct.mod_metadata** %10, align 8
  %114 = load %struct.mod_metadata*, %struct.mod_metadata** %10, align 8
  %115 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MDT_VERSION, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %130

120:                                              ; preds = %111
  %121 = load %struct.mod_metadata*, %struct.mod_metadata** %10, align 8
  %122 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %14, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %133

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %119
  %131 = load %struct.mod_metadata**, %struct.mod_metadata*** %8, align 8
  %132 = getelementptr inbounds %struct.mod_metadata*, %struct.mod_metadata** %131, i32 1
  store %struct.mod_metadata** %132, %struct.mod_metadata*** %8, align 8
  br label %107

133:                                              ; preds = %128, %107
  %134 = load %struct.mod_metadata**, %struct.mod_metadata*** %8, align 8
  %135 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %136 = icmp ult %struct.mod_metadata** %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %173

138:                                              ; preds = %133
  %139 = load i8*, i8** %13, align 8
  %140 = load %struct.mod_depend*, %struct.mod_depend** %11, align 8
  %141 = call %struct.TYPE_12__* @modlist_lookup2(i8* %139, %struct.mod_depend* %140)
  store %struct.TYPE_12__* %141, %struct.TYPE_12__** %12, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = icmp ne %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  store %struct.TYPE_13__* %147, %struct.TYPE_13__** %4, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = call i32 @linker_file_add_dependency(%struct.TYPE_13__* %152, %struct.TYPE_13__* %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %176

158:                                              ; preds = %144
  br label %173

159:                                              ; preds = %138
  %160 = load i8*, i8** %13, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %162 = load %struct.mod_depend*, %struct.mod_depend** %11, align 8
  %163 = call i32 @linker_load_module(i32* null, i8* %160, %struct.TYPE_13__* %161, %struct.mod_depend* %162, i32* null)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %169, i8* %170)
  br label %176

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %158, %137, %98
  %174 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %175 = getelementptr inbounds %struct.mod_metadata*, %struct.mod_metadata** %174, i32 1
  store %struct.mod_metadata** %175, %struct.mod_metadata*** %7, align 8
  br label %86

176:                                              ; preds = %166, %157, %86
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %2, align 4
  br label %187

181:                                              ; preds = %176
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = load %struct.mod_metadata**, %struct.mod_metadata*** %5, align 8
  %184 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %185 = call i32 @linker_addmodules(%struct.TYPE_13__* %182, %struct.mod_metadata** %183, %struct.mod_metadata** %184, i32 0)
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %181, %179, %70, %39, %31
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @linker_file_add_dependency(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @linker_file_lookup_set(%struct.TYPE_13__*, i32, %struct.mod_metadata***, %struct.mod_metadata***, i32*) #1

declare dso_local %struct.TYPE_12__* @modlist_lookup(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @modlist_lookup2(i8*, %struct.mod_depend*) #1

declare dso_local i32 @linker_load_module(i32*, i8*, %struct.TYPE_13__*, %struct.mod_depend*, i32*) #1

declare dso_local i32 @linker_addmodules(%struct.TYPE_13__*, %struct.mod_metadata**, %struct.mod_metadata**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
