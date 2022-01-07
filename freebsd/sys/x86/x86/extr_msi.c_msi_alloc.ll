; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_intsrc = type { i32, i32, i32, i32, i32, i8**, %struct.TYPE_2__, %struct.msi_intsrc*, i32*, i8* }
%struct.TYPE_2__ = type { i64 }

@msi_enabled = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_MSI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@msi_lock = common dso_local global i32 0, align 4
@first_msi_irq = common dso_local global i32 0, align 4
@num_msi_irqs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"count mismatch\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"msi: routing MSI IRQ %d to local APIC %u vector %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dead MSI has handlers\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_alloc(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.msi_intsrc*, align 8
  %11 = alloca %struct.msi_intsrc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @msi_enabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %209

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @bus_get_domain(i32* %23, i8** %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* null, i8** %13, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_MSI, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = call i8** @malloc(i32 %34, i32 %35, i32 %36)
  store i8** %37, i8*** %14, align 8
  br label %39

38:                                               ; preds = %27
  store i8** null, i8*** %14, align 8
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %108, %39
  %41 = call i32 @mtx_lock(i32* @msi_lock)
  store i32 0, i32* %15, align 4
  %42 = load i32, i32* @first_msi_irq, align 4
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %75, %40
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @first_msi_irq, align 4
  %46 = load i32, i32* @num_msi_irqs, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @intr_lookup_source(i32 %50)
  %52 = inttoptr i64 %51 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %52, %struct.msi_intsrc** %10, align 8
  %53 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %54 = icmp eq %struct.msi_intsrc* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %78

56:                                               ; preds = %49
  %57 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %58 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %78

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %43

78:                                               ; preds = %72, %55, %43
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* @first_msi_irq, align 4
  %89 = load i32, i32* @num_msi_irqs, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = call i32 @mtx_unlock(i32* @msi_lock)
  %94 = load i8**, i8*** %14, align 8
  %95 = load i32, i32* @M_MSI, align 4
  %96 = call i32 @free(i8** %94, i32 %95)
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %5, align 4
  br label %209

98:                                               ; preds = %82
  %99 = call i32 @mtx_unlock(i32* @msi_lock)
  br label %100

100:                                              ; preds = %104, %98
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = call i32 (...) @msi_create_source()
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %100

108:                                              ; preds = %100
  br label %40

109:                                              ; preds = %78
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @KASSERT(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %115 = load i8*, i8** %13, align 8
  %116 = call i8* @intr_next_cpu(i8* %115)
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @apic_alloc_vectors(i8* %117, i32* %118, i32 %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %109
  %125 = call i32 @mtx_unlock(i32* @msi_lock)
  %126 = load i8**, i8*** %14, align 8
  %127 = load i32, i32* @M_MSI, align 4
  %128 = call i32 @free(i8** %126, i32 %127)
  %129 = load i32, i32* @ENOSPC, align 4
  store i32 %129, i32* %5, align 4
  br label %209

130:                                              ; preds = %109
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @intr_lookup_source(i32 %133)
  %135 = inttoptr i64 %134 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %135, %struct.msi_intsrc** %11, align 8
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %184, %130
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %187

140:                                              ; preds = %136
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @intr_lookup_source(i32 %145)
  %147 = inttoptr i64 %146 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %147, %struct.msi_intsrc** %10, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %151 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %154 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %153, i32 0, i32 8
  store i32* %152, i32** %154, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %155, %156
  %158 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %159 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i64, i64* @bootverbose, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %140
  %163 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %164 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %167 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %170 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %162, %140
  %174 = load %struct.msi_intsrc*, %struct.msi_intsrc** %11, align 8
  %175 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %176 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %175, i32 0, i32 7
  store %struct.msi_intsrc* %174, %struct.msi_intsrc** %176, align 8
  %177 = load %struct.msi_intsrc*, %struct.msi_intsrc** %10, align 8
  %178 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @KASSERT(i32 %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  br label %136

187:                                              ; preds = %136
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.msi_intsrc*, %struct.msi_intsrc** %11, align 8
  %190 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.msi_intsrc*, %struct.msi_intsrc** %11, align 8
  %193 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %7, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %204

196:                                              ; preds = %187
  %197 = load i32*, i32** %9, align 8
  %198 = load i8**, i8*** %14, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @bcopy(i32* %197, i8** %198, i32 %202)
  br label %204

204:                                              ; preds = %196, %187
  %205 = load i8**, i8*** %14, align 8
  %206 = load %struct.msi_intsrc*, %struct.msi_intsrc** %11, align 8
  %207 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %206, i32 0, i32 5
  store i8** %205, i8*** %207, align 8
  %208 = call i32 @mtx_unlock(i32* @msi_lock)
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %204, %124, %92, %20
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i64 @bus_get_domain(i32*, i8**) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i8**, i32) #1

declare dso_local i32 @msi_create_source(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @intr_next_cpu(i8*) #1

declare dso_local i32 @apic_alloc_vectors(i8*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
