; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_find_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@ISA_NPORT = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.isa_config*, %struct.isa_config*)* @isa_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_find_port(i32 %0, %struct.isa_config* %1, %struct.isa_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isa_config*, align 8
  %6 = alloca %struct.isa_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isa_config* %1, %struct.isa_config** %5, align 8
  store %struct.isa_config* %2, %struct.isa_config** %6, align 8
  %15 = load i32, i32* @ISA_NPORT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.resource*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ISA_NPORT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYS_RES_IOPORT, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @bus_delete_resource(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %29
  store %struct.resource* null, %struct.resource** %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %19

34:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  %35 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %36 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %39 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %187, %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %43 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %190

46:                                               ; preds = %40
  %47 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %48 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %46
  %58 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %59 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %66 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 4
  %72 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %73 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %80 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  br label %187

86:                                               ; preds = %46
  %87 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %88 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %96 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %104 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %175, %86
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %12, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %179

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @SYS_RES_IOPORT, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @bus_set_resource(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @SYS_RES_IOPORT, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @rman_make_alignment_flags(i32 %127)
  %129 = call %struct.resource* @bus_alloc_resource_any(i32 %125, i32 %126, i32* %8, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %131
  store %struct.resource* %129, %struct.resource** %132, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %134
  %136 = load %struct.resource*, %struct.resource** %135, align 8
  %137 = icmp ne %struct.resource* %136, null
  br i1 %137, label %138, label %174

138:                                              ; preds = %118
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %141 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i32 %139, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %152 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  store i32 %150, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %160 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %168 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  store i32 %166, i32* %173, align 4
  br label %179

174:                                              ; preds = %118
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %11, align 4
  br label %111

179:                                              ; preds = %138, %111
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %181
  %183 = load %struct.resource*, %struct.resource** %182, align 8
  %184 = icmp ne %struct.resource* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %190

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %57
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %40

190:                                              ; preds = %185, %40
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %211, %190
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @ISA_NPORT, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %197
  %199 = load %struct.resource*, %struct.resource** %198, align 8
  %200 = icmp ne %struct.resource* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @SYS_RES_IOPORT, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %206
  %208 = load %struct.resource*, %struct.resource** %207, align 8
  %209 = call i32 @bus_release_resource(i32 %202, i32 %203, i32 %204, %struct.resource* %208)
  br label %210

210:                                              ; preds = %201, %195
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %191

214:                                              ; preds = %191
  %215 = load i32, i32* %7, align 4
  %216 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %216)
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #2

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #2

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @rman_make_alignment_flags(i32) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
