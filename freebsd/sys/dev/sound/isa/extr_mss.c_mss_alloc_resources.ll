; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64, i64, i64, i64, i64, i8*, i8*, i32, i32, i8*, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@BD_F_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_info*, i32)* @mss_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_alloc_resources(%struct.mss_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %8 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %9 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %8, i32 0, i32 11
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_IOPORT, align 4
  %15 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %16 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %15, i32 0, i32 0
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i64* %16, i32 %17)
  %19 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 11
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %23 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %22, i32 0, i32 10
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %30 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %29, i32 0, i32 1
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i64* %30, i32 %31)
  %33 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %34 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %33, i32 0, i32 10
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %37 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SYS_RES_DRQ, align 4
  %43 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %44 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %43, i32 0, i32 2
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i64* %44, i32 %45)
  %47 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %48 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %51 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %56 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %55, i32 0, i32 9
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SYS_RES_IOPORT, align 4
  %62 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %63 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %62, i32 0, i32 3
  %64 = load i32, i32* @RF_ACTIVE, align 4
  %65 = call i8* @bus_alloc_resource_any(i32 %60, i32 %61, i64* %63, i32 %64)
  %66 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %67 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %54, %49
  %69 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %70 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %75 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %74, i32 0, i32 6
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SYS_RES_DRQ, align 4
  %81 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %82 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %81, i32 0, i32 4
  %83 = load i32, i32* @RF_ACTIVE, align 4
  %84 = call i8* @bus_alloc_resource_any(i32 %79, i32 %80, i64* %82, i32 %83)
  %85 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %86 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %78, %73, %68
  %88 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %89 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %88, i32 0, i32 11
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %94 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %99 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %98, i32 0, i32 10
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %92, %87
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %97
  %104 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %105 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %110 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %109, i32 0, i32 9
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %108, %103
  %115 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %116 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %121 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %120, i32 0, i32 6
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %119, %114
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %174

128:                                              ; preds = %125
  %129 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %130 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %129, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @rman_get_start(i8* %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @isa_dma_acquire(i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %137 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @isa_dmainit(i32 %135, i32 %138)
  %140 = load i32, i32* @BD_F_DUPLEX, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %143 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %147 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %146, i32 0, i32 6
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %167

150:                                              ; preds = %128
  %151 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %152 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %151, i32 0, i32 6
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @rman_get_start(i8* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @isa_dma_acquire(i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %159 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @isa_dmainit(i32 %157, i32 %160)
  %162 = load i32, i32* @BD_F_DUPLEX, align 4
  %163 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %164 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %173

167:                                              ; preds = %128
  %168 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %169 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %168, i32 0, i32 5
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %172 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %171, i32 0, i32 6
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %167, %150
  br label %174

174:                                              ; preds = %173, %125
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @isa_dma_acquire(i32) #1

declare dso_local i32 @isa_dmainit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
