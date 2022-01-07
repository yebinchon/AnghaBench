; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_unload_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_unload_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_7__*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32* }

@DPCPU_SETNAME = common dso_local global i32 0, align 4
@M_LINKER = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VNET_SETNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @link_elf_unload_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_elf_unload_file(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = bitcast %struct.TYPE_8__* %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @elf_cpu_unload_file(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 12
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %72

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %68, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 12
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %68

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 12
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 12
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @DPCPU_SETNAME, align 4
  %49 = call i32 @strcmp(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 12
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 12
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dpcpu_free(i32 %58, i64 %65)
  br label %67

67:                                               ; preds = %51, %40
  br label %68

68:                                               ; preds = %67, %39, %29
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %14

71:                                               ; preds = %14
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 15
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %118

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 14
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* @M_LINKER, align 4
  %82 = call i32 @free(%struct.TYPE_10__* %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 13
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* @M_LINKER, align 4
  %87 = call i32 @free(%struct.TYPE_10__* %85, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 12
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* @M_LINKER, align 4
  %92 = call i32 @free(%struct.TYPE_10__* %90, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* @M_LINKER, align 4
  %97 = call i32 @free(%struct.TYPE_10__* %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* @M_LINKER, align 4
  %102 = call i32 @free(%struct.TYPE_10__* %100, i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load i32, i32* @M_LINKER, align 4
  %107 = call i32 @free(%struct.TYPE_10__* %105, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %77
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @preload_delete_name(i32* %115)
  br label %117

117:                                              ; preds = %112, %77
  br label %230

118:                                              ; preds = %72
  store i64 0, i64* %4, align 8
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 14
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* @M_LINKER, align 4
  %134 = call i32 @free(%struct.TYPE_10__* %132, i32 %133)
  br label %135

135:                                              ; preds = %125
  %136 = load i64, i64* %4, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %4, align 8
  br label %119

138:                                              ; preds = %119
  store i64 0, i64* %4, align 8
  br label %139

139:                                              ; preds = %155, %138
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 13
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* @M_LINKER, align 4
  %154 = call i32 @free(%struct.TYPE_10__* %152, i32 %153)
  br label %155

155:                                              ; preds = %145
  %156 = load i64, i64* %4, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %4, align 8
  br label %139

158:                                              ; preds = %139
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 14
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* @M_LINKER, align 4
  %163 = call i32 @free(%struct.TYPE_10__* %161, i32 %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 13
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i32, i32* @M_LINKER, align 4
  %168 = call i32 @free(%struct.TYPE_10__* %166, i32 %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 12
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i32, i32* @M_LINKER, align 4
  %173 = call i32 @free(%struct.TYPE_10__* %171, i32 %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 10
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp ne %struct.TYPE_7__* %176, null
  br i1 %177, label %178, label %194

178:                                              ; preds = %158
  %179 = load i32, i32* @kernel_map, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 11
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 11
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 10
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ptoa(i32 %190)
  %192 = add nsw i64 %185, %191
  %193 = call i32 @vm_map_remove(i32 %179, i64 %182, i64 %192)
  br label %194

194:                                              ; preds = %178, %158
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 9
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i32, i32* @M_LINKER, align 4
  %199 = call i32 @free(%struct.TYPE_10__* %197, i32 %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load i32, i32* @M_LINKER, align 4
  %204 = call i32 @free(%struct.TYPE_10__* %202, i32 %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i32, i32* @M_LINKER, align 4
  %209 = call i32 @free(%struct.TYPE_10__* %207, i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load i32, i32* @M_LINKER, align 4
  %214 = call i32 @free(%struct.TYPE_10__* %212, i32 %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load i32, i32* @M_LINKER, align 4
  %219 = call i32 @free(%struct.TYPE_10__* %217, i32 %218)
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load i32, i32* @M_LINKER, align 4
  %224 = call i32 @free(%struct.TYPE_10__* %222, i32 %223)
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* @M_LINKER, align 4
  %229 = call i32 @free(%struct.TYPE_10__* %227, i32 %228)
  br label %230

230:                                              ; preds = %194, %117
  ret void
}

declare dso_local i32 @elf_cpu_unload_file(%struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i32 @dpcpu_free(i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @preload_delete_name(i32*) #1

declare dso_local i32 @vm_map_remove(i32, i64, i64) #1

declare dso_local i64 @ptoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
