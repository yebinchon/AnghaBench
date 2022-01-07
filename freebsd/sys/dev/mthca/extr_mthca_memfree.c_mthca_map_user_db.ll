; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_map_user_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_map_user_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_uar = type { i32 }
%struct.mthca_user_db_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_map_user_db(%struct.mthca_dev* %0, %struct.mthca_uar* %1, %struct.mthca_user_db_table* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_uar*, align 8
  %9 = alloca %struct.mthca_user_db_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.page*], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %8, align 8
  store %struct.mthca_user_db_table* %2, %struct.mthca_user_db_table** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %16 = call i32 @mthca_is_memfree(%struct.mthca_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %202

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %202

33:                                               ; preds = %22
  %34 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %41 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %75, label %50

50:                                               ; preds = %33
  %51 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %52 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %62 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %60, %50
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 4095
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %60, %33
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %197

78:                                               ; preds = %71
  %79 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %80 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %90 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %197

98:                                               ; preds = %78
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @PAGE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @FOLL_WRITE, align 4
  %103 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %104 = call i32 @get_user_pages(i32 %101, i32 1, i32 %102, %struct.page** %103, i32* null)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %197

108:                                              ; preds = %98
  %109 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %110 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %117 = load %struct.page*, %struct.page** %116, align 8
  %118 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @PAGE_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = call i32 @sg_set_page(i32* %115, %struct.page* %117, i32 %118, i32 %122)
  %124 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %128 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %135 = call i32 @pci_map_sg(i32 %126, i32* %133, i32 1, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %108
  %139 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %140 = load %struct.page*, %struct.page** %139, align 8
  %141 = call i32 @put_page(%struct.page* %140)
  br label %197

142:                                              ; preds = %108
  %143 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %144 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %145 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = call i32 @sg_dma_address(i32* %150)
  %152 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %153 = load %struct.mthca_uar*, %struct.mthca_uar** %8, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %152, %struct.mthca_uar* %153, i32 %154)
  %156 = call i32 @mthca_MAP_ICM_page(%struct.mthca_dev* %143, i32 %151, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %142
  %160 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %161 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %164 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %171 = call i32 @pci_unmap_sg(i32 %162, i32* %169, i32 1, i32 %170)
  %172 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %173 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = call %struct.page* @sg_page(i32* %178)
  %180 = call i32 @put_page(%struct.page* %179)
  br label %197

181:                                              ; preds = %142
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %184 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store i32 %182, i32* %189, align 4
  %190 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %191 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %181, %159, %138, %107, %88, %75
  %198 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %199 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %197, %30, %18
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_user_pages(i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @pci_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mthca_MAP_ICM_page(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, %struct.mthca_uar*, i32) #1

declare dso_local i32 @pci_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
