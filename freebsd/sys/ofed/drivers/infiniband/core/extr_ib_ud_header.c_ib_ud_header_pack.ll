; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ud_header.c_ib_ud_header_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ud_header.c_ib_ud_header_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { i32, i64, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64 }

@lrh_table = common dso_local global i32 0, align 4
@IB_LRH_BYTES = common dso_local global i64 0, align 8
@eth_table = common dso_local global i32 0, align 4
@IB_ETH_BYTES = common dso_local global i64 0, align 8
@vlan_table = common dso_local global i32 0, align 4
@IB_VLAN_BYTES = common dso_local global i64 0, align 8
@grh_table = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i64 0, align 8
@ip4_table = common dso_local global i32 0, align 4
@IB_IP4_BYTES = common dso_local global i64 0, align 8
@udp_table = common dso_local global i32 0, align 4
@IB_UDP_BYTES = common dso_local global i64 0, align 8
@bth_table = common dso_local global i32 0, align 4
@IB_BTH_BYTES = common dso_local global i64 0, align 8
@deth_table = common dso_local global i32 0, align 4
@IB_DETH_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_ud_header_pack(%struct.ib_ud_header* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_ud_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_ud_header* %0, %struct.ib_ud_header** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %7 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %6, i32 0, i32 15
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @lrh_table, align 4
  %12 = load i32, i32* @lrh_table, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %15 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %14, i32 0, i32 14
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = call i32 @ib_pack(i32 %11, i32 %13, i32* %15, i8* %19)
  %21 = load i64, i64* @IB_LRH_BYTES, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %10, %2
  %27 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %28 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %27, i32 0, i32 13
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* @eth_table, align 4
  %33 = load i32, i32* @eth_table, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %36 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %35, i32 0, i32 12
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i32 @ib_pack(i32 %32, i32 %34, i32* %36, i8* %40)
  %42 = load i64, i64* @IB_ETH_BYTES, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %49 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32, i32* @vlan_table, align 4
  %54 = load i32, i32* @vlan_table, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %57 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %56, i32 0, i32 10
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @ib_pack(i32 %53, i32 %55, i32* %57, i8* %61)
  %63 = load i64, i64* @IB_VLAN_BYTES, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %52, %47
  %69 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %70 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i32, i32* @grh_table, align 4
  %75 = load i32, i32* @grh_table, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %78 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %77, i32 0, i32 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i32 @ib_pack(i32 %74, i32 %76, i32* %78, i8* %82)
  %84 = load i64, i64* @IB_GRH_BYTES, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %73, %68
  %90 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %91 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load i32, i32* @ip4_table, align 4
  %96 = load i32, i32* @ip4_table, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %99 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %98, i32 0, i32 6
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 @ib_pack(i32 %95, i32 %97, i32* %99, i8* %103)
  %105 = load i64, i64* @IB_IP4_BYTES, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %94, %89
  %111 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %112 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load i32, i32* @udp_table, align 4
  %117 = load i32, i32* @udp_table, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %120 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %119, i32 0, i32 4
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 @ib_pack(i32 %116, i32 %118, i32* %120, i8* %124)
  %126 = load i64, i64* @IB_UDP_BYTES, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %115, %110
  %132 = load i32, i32* @bth_table, align 4
  %133 = load i32, i32* @bth_table, align 4
  %134 = call i32 @ARRAY_SIZE(i32 %133)
  %135 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %136 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %135, i32 0, i32 3
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = call i32 @ib_pack(i32 %132, i32 %134, i32* %136, i8* %140)
  %142 = load i64, i64* @IB_BTH_BYTES, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @deth_table, align 4
  %148 = load i32, i32* @deth_table, align 4
  %149 = call i32 @ARRAY_SIZE(i32 %148)
  %150 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %151 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %150, i32 0, i32 2
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = call i32 @ib_pack(i32 %147, i32 %149, i32* %151, i8* %155)
  %157 = load i64, i64* @IB_DETH_BYTES, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %5, align 4
  %162 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %163 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %131
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %172 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %171, i32 0, i32 0
  %173 = call i32 @memcpy(i8* %170, i32* %172, i32 4)
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, 4
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %166, %131
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @ib_pack(i32, i32, i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
