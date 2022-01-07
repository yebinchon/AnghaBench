; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_config_egress_fifo_credits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_config_egress_fifo_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NAE_STG1_STG2CRDT_CMD = common dso_local global i32 0, align 4
@NAE_STG2_EHCRDT_CMD = common dso_local global i32 0, align 4
@NAE_EH_FREECRDT_CMD = common dso_local global i32 0, align 4
@NAE_STG2_STRCRDT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_egress_fifo_credits(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nae_port_config* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nae_port_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nae_port_config* %5, %struct.nae_port_config** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %21, i64 %23
  %25 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %58, %6
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %34, i64 %36
  %38 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %16, align 4
  %51 = shl i32 %50, 4
  %52 = or i32 %49, %51
  %53 = or i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NAE_STG1_STG2CRDT_CMD, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @nlm_write_nae_reg(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %62, i64 %64
  %66 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %99, %61
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %75, i64 %77
  %79 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %86, %74
  %89 = load i32, i32* %14, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %16, align 4
  %92 = shl i32 %91, 4
  %93 = or i32 %90, %92
  %94 = or i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @NAE_STG2_EHCRDT_CMD, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @nlm_write_nae_reg(i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %70

102:                                              ; preds = %70
  %103 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %103, i64 %105
  %107 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %140, %102
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %116, i64 %118
  %120 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %127, %115
  %130 = load i32, i32* %14, align 4
  %131 = shl i32 %130, 16
  %132 = load i32, i32* %16, align 4
  %133 = shl i32 %132, 4
  %134 = or i32 %131, %133
  %135 = or i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @NAE_EH_FREECRDT_CMD, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @nlm_write_nae_reg(i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %111

143:                                              ; preds = %111
  %144 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %144, i64 %146
  %148 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %16, align 4
  br label %152

152:                                              ; preds = %181, %143
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %152
  %157 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %157, i64 %159
  %161 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %168, %156
  %171 = load i32, i32* %14, align 4
  %172 = shl i32 %171, 16
  %173 = load i32, i32* %16, align 4
  %174 = shl i32 %173, 4
  %175 = or i32 %172, %174
  %176 = or i32 %175, 1
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @NAE_STG2_STRCRDT_CMD, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @nlm_write_nae_reg(i32 %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %152

184:                                              ; preds = %152
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
