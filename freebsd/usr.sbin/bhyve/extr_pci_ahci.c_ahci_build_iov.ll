; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_build_iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_build_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }
%struct.ahci_ioreq = type { i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ahci_prdt_entry = type { i32, i64 }

@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@DBCMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32)* @ahci_build_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_build_iov(%struct.ahci_port* %0, %struct.ahci_ioreq* %1, %struct.ahci_prdt_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca %struct.ahci_ioreq*, align 8
  %7 = alloca %struct.ahci_prdt_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blockif_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store %struct.ahci_ioreq* %1, %struct.ahci_ioreq** %6, align 8
  store %struct.ahci_prdt_entry* %2, %struct.ahci_prdt_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %18 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %17, i32 0, i32 3
  store %struct.blockif_req* %18, %struct.blockif_req** %9, align 8
  %19 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %20 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %23 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %26 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %101, %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %33, %29
  %41 = phi i1 [ false, %33 ], [ false, %29 ], [ %39, %37 ]
  br i1 %41, label %42, label %106

42:                                               ; preds = %40
  %43 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %44 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DBCMASK, align 4
  %47 = and i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %101

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %67 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ahci_ctx(i32 %68)
  %70 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %71 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @paddr_guest2host(i32 %69, i64 %75, i32 %76)
  %78 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %79 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %87 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %65, %52
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %105 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %104, i32 1
  store %struct.ahci_prdt_entry* %105, %struct.ahci_prdt_entry** %7, align 8
  br label %29

106:                                              ; preds = %40
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %166

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %113 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @blockif_sectsz(i32 %114)
  %116 = srem i32 %111, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sgt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  br label %124

124:                                              ; preds = %151, %110
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %129 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %127
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %142 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, %140
  store i32 %150, i32* %148, align 4
  br label %165

151:                                              ; preds = %127
  %152 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %153 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %11, align 4
  br label %124

165:                                              ; preds = %139, %124
  br label %166

166:                                              ; preds = %165, %106
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %169 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %172 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %175 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %179 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %182 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %166
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %186, %187
  br label %189

189:                                              ; preds = %185, %166
  %190 = phi i1 [ false, %166 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %193 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  ret void
}

declare dso_local i32 @paddr_guest2host(i32, i64, i32) #1

declare dso_local i32 @ahci_ctx(i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
