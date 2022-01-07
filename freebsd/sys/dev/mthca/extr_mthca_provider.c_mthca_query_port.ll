; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.ib_smp = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @mthca_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.ib_smp*, align 8
  %8 = alloca %struct.ib_smp*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %7, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %8, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_smp* @kzalloc(i32 16, i32 %12)
  store %struct.ib_smp* %13, %struct.ib_smp** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ib_smp* @kmalloc(i32 16, i32 %14)
  store %struct.ib_smp* %15, %struct.ib_smp** %8, align 8
  %16 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %17 = icmp ne %struct.ib_smp* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %20 = icmp ne %struct.ib_smp* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  br label %183

22:                                               ; preds = %18
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %24 = call i32 @memset(%struct.ib_port_attr* %23, i32 0, i32 96)
  %25 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %26 = call i32 @init_query_mad(%struct.ib_smp* %25)
  %27 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %28 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %33 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %35 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %38 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %39 = call i32 @mthca_MAD_IFC(%struct.TYPE_5__* %35, i32 1, i32 1, i32 %36, i32* null, i32* null, %struct.ib_smp* %37, %struct.ib_smp* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %183

43:                                               ; preds = %22
  %44 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %45 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = call i8* @be16_to_cpup(i32* %47)
  %49 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %49, i32 0, i32 18
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %52 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 34
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 7
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %60 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 18
  %63 = call i8* @be16_to_cpup(i32* %62)
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 17
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 36
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 32
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 33
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 4
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %91 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 20
  %94 = call i32 @be32_to_cpup(i32* %93)
  %95 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %96 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %95, i32 0, i32 16
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %98 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %102, i32 0, i32 15
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %104, i32 0, i32 4
  store i32 -2147483648, i32* %105, align 8
  %106 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %107 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %112 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %114 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 46
  %117 = call i8* @be16_to_cpup(i32* %116)
  %118 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %118, i32 0, i32 13
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %121 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 48
  %124 = call i8* @be16_to_cpup(i32* %123)
  %125 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %125, i32 0, i32 12
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %128 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 31
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %136 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 35
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 4
  %141 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %144 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 41
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 15
  %149 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %152 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 36
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 4
  %157 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %160 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 51
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 31
  %165 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %168 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 37
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 4
  %173 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %173, i32 0, i32 10
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %176 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 41
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 4
  %181 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %182 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %181, i32 0, i32 11
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %43, %42, %21
  %184 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %185 = call i32 @kfree(%struct.ib_smp* %184)
  %186 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %187 = call i32 @kfree(%struct.ib_smp* %186)
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.TYPE_5__*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local %struct.TYPE_5__* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
