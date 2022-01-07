; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64 }
%struct.cfg_nat_legacy = type { i64, i32, i32, i32, i32 }
%struct.nat44_cfg_nat = type { i32, i32, i32, i32, i32 }
%struct.cfg_redir_legacy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nat44_cfg_redir = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@V_layer3_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*)* @ipfw_nat_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_nat_cfg(%struct.sockopt* %0) #0 {
  %2 = alloca %struct.sockopt*, align 8
  %3 = alloca %struct.cfg_nat_legacy*, align 8
  %4 = alloca %struct.nat44_cfg_nat*, align 8
  %5 = alloca %struct.cfg_redir_legacy*, align 8
  %6 = alloca %struct.nat44_cfg_redir*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sockopt* %0, %struct.sockopt** %2, align 8
  %12 = load %struct.sockopt*, %struct.sockopt** %2, align 8
  %13 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 128
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @roundup2(i64 %17, i32 8)
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @M_TEMP, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @malloc(i64 %20, i32 %21, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load %struct.sockopt*, %struct.sockopt** %2, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @sooptcopyin(%struct.sockopt* %26, i8* %27, i64 %28, i32 24)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %166

33:                                               ; preds = %1
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.cfg_nat_legacy*
  store %struct.cfg_nat_legacy* %35, %struct.cfg_nat_legacy** %3, align 8
  %36 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %37 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %10, align 4
  br label %166

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @roundup2(i64 %44, i32 8)
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to %struct.nat44_cfg_nat*
  store %struct.nat44_cfg_nat* %47, %struct.nat44_cfg_nat** %4, align 8
  %48 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %49 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %52 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %56 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %59 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strlcpy(i32 %57, i32 %60, i32 4)
  %62 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %63 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %66 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %68 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %71 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %73 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %76 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %79 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 44
  %83 = add i64 24, %82
  %84 = icmp ult i64 %77, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %42
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %10, align 4
  br label %166

87:                                               ; preds = %42
  %88 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %89 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %88, i64 1
  %90 = bitcast %struct.nat44_cfg_nat* %89 to %struct.nat44_cfg_redir*
  store %struct.nat44_cfg_redir* %90, %struct.nat44_cfg_redir** %6, align 8
  %91 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %92 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %91, i64 1
  %93 = bitcast %struct.cfg_nat_legacy* %92 to %struct.cfg_redir_legacy*
  store %struct.cfg_redir_legacy* %93, %struct.cfg_redir_legacy** %5, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %160, %87
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.cfg_nat_legacy*, %struct.cfg_nat_legacy** %3, align 8
  %97 = getelementptr inbounds %struct.cfg_nat_legacy, %struct.cfg_nat_legacy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %163

100:                                              ; preds = %94
  %101 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %102 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %105 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 4
  %106 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %107 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %110 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %112 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %115 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %117 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %120 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %122 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %125 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %127 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %130 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %132 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %135 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %137 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %140 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %142 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %145 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %147 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %150 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %152 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %155 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %6, align 8
  %157 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %156, i32 1
  store %struct.nat44_cfg_redir* %157, %struct.nat44_cfg_redir** %6, align 8
  %158 = load %struct.cfg_redir_legacy*, %struct.cfg_redir_legacy** %5, align 8
  %159 = getelementptr inbounds %struct.cfg_redir_legacy, %struct.cfg_redir_legacy* %158, i32 1
  store %struct.cfg_redir_legacy* %159, %struct.cfg_redir_legacy** %5, align 8
  br label %160

160:                                              ; preds = %100
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %94

163:                                              ; preds = %94
  %164 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %165 = call i32 @nat44_config(i32* @V_layer3_chain, %struct.nat44_cfg_nat* %164)
  br label %166

166:                                              ; preds = %163, %85, %40, %32
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* @M_TEMP, align 4
  %169 = call i32 @free(i8* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  ret i32 %170
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i8*, i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @nat44_config(i32*, %struct.nat44_cfg_nat*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
