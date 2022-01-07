; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_dsm_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_dsm_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32 }
%struct.ahci_ioreq = type { i32*, i32, i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i32, i32 }

@ATA_DATA_SET_MANAGEMENT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i32)* @ahci_handle_dsm_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_dsm_trim(%struct.ahci_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.blockif_req*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [512 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_DATA_SET_MANAGEMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 13
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %36, 512
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %49

38:                                               ; preds = %4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 11
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 512
  store i32 %48, i32* %13, align 4
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %38, %27
  %50 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [512 x i32], [512 x i32]* %18, i64 0, i64 0
  %54 = call i32 @read_prdt(%struct.ahci_port* %50, i32 %51, i32* %52, i32* %53, i32 2048)
  br label %55

55:                                               ; preds = %145, %49
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x i32], [512 x i32]* %18, i64 0, i64 %57
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 40
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 32
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %72, %76
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %77, %81
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 8
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %55
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %145

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @ATA_S_READY, align 4
  %118 = load i32, i32* @ATA_S_DSC, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ahci_write_fis_sdb(%struct.ahci_port* %114, i32 %115, i32* %116, i32 %119)
  br label %129

121:                                              ; preds = %103
  %122 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @ATA_S_READY, align 4
  %126 = load i32, i32* @ATA_S_DSC, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %122, i32 %123, i32* %124, i32 %127)
  br label %129

129:                                              ; preds = %121, %113
  %130 = load i32, i32* %6, align 4
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %134 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %138 = call i32 @ahci_check_stopped(%struct.ahci_port* %137)
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %129
  %142 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %143 = call i32 @ahci_handle_port(%struct.ahci_port* %142)
  br label %144

144:                                              ; preds = %141, %129
  br label %224

145:                                              ; preds = %99
  br label %55

146:                                              ; preds = %55
  %147 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %148 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %147, i32 0, i32 3
  %149 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %148)
  store %struct.ahci_ioreq* %149, %struct.ahci_ioreq** %9, align 8
  %150 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %151 = icmp ne %struct.ahci_ioreq* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %155 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %154, i32 0, i32 3
  %156 = load i32, i32* @io_flist, align 4
  %157 = call i32 @STAILQ_REMOVE_HEAD(i32* %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %160 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %159, i32 0, i32 0
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %163 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %166 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %169 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %175 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %177 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %176, i32 0, i32 5
  store %struct.blockif_req* %177, %struct.blockif_req** %10, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %180 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @blockif_sectsz(i32 %181)
  %183 = mul nsw i32 %178, %182
  %184 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %185 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %188 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @blockif_sectsz(i32 %189)
  %191 = mul nsw i32 %186, %190
  %192 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %193 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 1, %194
  %196 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %197 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %201 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %200, i32 0, i32 2
  %202 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %203 = load i32, i32* @io_blist, align 4
  %204 = call i32 @TAILQ_INSERT_HEAD(i32* %201, %struct.ahci_ioreq* %202, i32 %203)
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %146
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %207, %146
  %215 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %216 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %219 = call i32 @blockif_delete(i32 %217, %struct.blockif_req* %218)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  br label %224

224:                                              ; preds = %214, %144
  ret void
}

declare dso_local i32 @read_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port*, i32) #1

declare dso_local i32 @ahci_write_fis_sdb(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_check_stopped(%struct.ahci_port*) #1

declare dso_local i32 @ahci_handle_port(%struct.ahci_port*) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @blockif_delete(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
