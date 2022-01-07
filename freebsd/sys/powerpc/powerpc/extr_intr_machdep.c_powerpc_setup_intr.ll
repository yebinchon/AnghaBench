; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_intr = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@powerpc_intr_pre_ithread = common dso_local global i32 0, align 4
@powerpc_intr_post_ithread = common dso_local global i32 0, align 4
@powerpc_intr_eoi = common dso_local global i32 0, align 4
@powerpc_assign_intr_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"irq%u:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IPI\00", align 1
@cpuset_domain = common dso_local global i32* null, align 8
@intr_table_lock = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4
@INTR_TRIGGER_INVALID = common dso_local global i64 0, align 8
@INTR_TRIGGER_CONFORM = common dso_local global i64 0, align 8
@INTR_POLARITY_CONFORM = common dso_local global i64 0, align 8
@root_pic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powerpc_setup_intr(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.powerpc_intr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.powerpc_intr* @intr_lookup(i32 %21)
  store %struct.powerpc_intr* %22, %struct.powerpc_intr** %18, align 8
  %23 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %24 = icmp eq %struct.powerpc_intr* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %9, align 4
  br label %189

27:                                               ; preds = %8
  %28 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %29 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %28, i32 0, i32 10
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp eq %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %34 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %33, i32 0, i32 10
  %35 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %36 = bitcast %struct.powerpc_intr* %35 to i8*
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @powerpc_intr_pre_ithread, align 4
  %39 = load i32, i32* @powerpc_intr_post_ithread, align 4
  %40 = load i32, i32* @powerpc_intr_eoi, align 4
  %41 = load i32, i32* @powerpc_assign_intr_cpu, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @intr_event_create(%struct.TYPE_3__** %34, i8* %36, i32 0, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %9, align 4
  br label %189

48:                                               ; preds = %32
  store i32 1, i32* %20, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %51 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %50, i32 0, i32 10
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @intr_priority(i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = load i8**, i8*** %16, align 8
  %61 = call i32 @intr_event_add_handler(%struct.TYPE_3__* %52, i8* %53, i32 %54, i32 %55, i8* %56, i32 %58, i32 %59, i8** %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %19, align 4
  store i32 %65, i32* %9, align 4
  br label %189

66:                                               ; preds = %49
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %69 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %75 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %74, i32 0, i32 7
  %76 = call i32 @CPU_ZERO(i32* %75)
  %77 = load i32*, i32** @cpuset_domain, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %82 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %81, i32 0, i32 7
  %83 = call i32 @CPU_COPY(i32* %80, i32* %82)
  br label %84

84:                                               ; preds = %73, %66
  %85 = call i32 @mtx_lock(i32* @intr_table_lock)
  %86 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %87 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %86, i32 0, i32 10
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %92 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @intrcnt_setname(i32 %90, i32 %93)
  %95 = call i32 @mtx_unlock(i32* @intr_table_lock)
  %96 = load i32, i32* @cold, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %187, label %98

98:                                               ; preds = %84
  %99 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %100 = call i32 @powerpc_map_irq(%struct.powerpc_intr* %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %186, label %103

103:                                              ; preds = %98
  %104 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %105 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @INTR_TRIGGER_INVALID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %111 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %114 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %117 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %120 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %119, i32 0, i32 1
  %121 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %122 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %121, i32 0, i32 3
  %123 = call i32 @PIC_TRANSLATE_CODE(i64 %112, i32 %115, i32 %118, i64* %120, i64* %122)
  br label %124

124:                                              ; preds = %109, %103
  %125 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %126 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @INTR_TRIGGER_CONFORM, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %132 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @INTR_POLARITY_CONFORM, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %130, %124
  %137 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %138 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %141 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %144 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %147 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @PIC_CONFIG(i64 %139, i32 %142, i64 %145, i64 %148)
  br label %150

150:                                              ; preds = %136, %130
  %151 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %152 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @root_pic, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %158 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %161 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %164 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %167 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %166, i32 0, i32 4
  %168 = call i32 @PIC_BIND(i64 %159, i32 %162, i32 %165, i32* %167)
  br label %169

169:                                              ; preds = %156, %150
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %174 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %177 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %180 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.powerpc_intr*, %struct.powerpc_intr** %18, align 8
  %183 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %182, i32 0, i32 4
  %184 = call i32 @PIC_ENABLE(i64 %175, i32 %178, i32 %181, i32* %183)
  br label %185

185:                                              ; preds = %172, %169
  br label %186

186:                                              ; preds = %185, %98
  br label %187

187:                                              ; preds = %186, %84
  %188 = load i32, i32* %19, align 4
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %187, %64, %46, %25
  %190 = load i32, i32* %9, align 4
  ret i32 %190
}

declare dso_local %struct.powerpc_intr* @intr_lookup(i32) #1

declare dso_local i32 @intr_event_create(%struct.TYPE_3__**, i8*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @intr_event_add_handler(%struct.TYPE_3__*, i8*, i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @intr_priority(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @intrcnt_setname(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @powerpc_map_irq(%struct.powerpc_intr*) #1

declare dso_local i32 @PIC_TRANSLATE_CODE(i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @PIC_CONFIG(i64, i32, i64, i64) #1

declare dso_local i32 @PIC_BIND(i64, i32, i32, i32*) #1

declare dso_local i32 @PIC_ENABLE(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
