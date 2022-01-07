; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_request2fis_h2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_request2fis_h2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ATA_R_ATAPI = common dso_local global i32 0, align 4
@ATA_PACKET_CMD = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@ATA_R_WRITE = common dso_local global i32 0, align 4
@ATA_F_DMA = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_request2fis_h2d(%struct.ata_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_request*, align 8
  %5 = alloca i32*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %7 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATA_R_ATAPI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 39, i32* %14, align 4
  %15 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %16 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = or i32 128, %18
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ATA_PACKET_CMD, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATA_R_READ, align 4
  %29 = load i32, i32* @ATA_R_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %12
  %34 = load i32, i32* @ATA_F_DMA, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %34, i32* %36, align 4
  br label %49

37:                                               ; preds = %12
  %38 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %39 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %44 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %37, %33
  %50 = load i32, i32* @ATA_D_LBA, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ATA_A_4BIT, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 15
  store i32 %53, i32* %55, align 4
  store i32 20, i32* %3, align 4
  br label %177

56:                                               ; preds = %2
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 39, i32* %58, align 4
  %59 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %60 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  %63 = or i32 128, %62
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %67 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %74 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %81 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %88 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %96 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @ATA_D_LBA, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %107 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ATA_R_48BIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %56
  %113 = load i32, i32* @ATA_D_IBM, align 4
  %114 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %115 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 24
  %120 = and i32 %119, 15
  %121 = or i32 %113, %120
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 7
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %112, %56
  %127 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %128 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 24
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %136 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 32
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 9
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %144 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 40
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 10
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %152 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 8
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 11
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %160 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 12
  store i32 %163, i32* %165, align 4
  %166 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %167 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 8
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 13
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @ATA_A_4BIT, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 15
  store i32 %174, i32* %176, align 4
  store i32 20, i32* %3, align 4
  br label %177

177:                                              ; preds = %126, %49
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
