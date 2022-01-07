; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_dump_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32 }
%struct.ber_element = type { i64, i64, i64, i64 }

@BER_TYPE_SINGLE_MAX = common dso_local global i64 0, align 8
@BER_CLASS_SHIFT = common dso_local global i64 0, align 8
@BER_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@BER_TYPE_SET = common dso_local global i64 0, align 8
@BER_TYPE_CONSTRUCTED = common dso_local global i64 0, align 8
@BER_TAG_MASK = common dso_local global i64 0, align 8
@BER_TAG_MORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ber*, %struct.ber_element*)* @ber_dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ber_dump_header(%struct.ber* %0, %struct.ber_element* %1) #0 {
  %3 = alloca %struct.ber*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %3, align 8
  store %struct.ber_element* %1, %struct.ber_element** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %11 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BER_TYPE_SINGLE_MAX, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %17 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %20 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BER_CLASS_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = or i64 %18, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %26 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BER_TYPE_SEQUENCE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %15
  %31 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %32 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BER_TYPE_SET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %15
  %37 = load i64, i64* @BER_TYPE_CONSTRUCTED, align 8
  %38 = load i64, i64* %5, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.ber*, %struct.ber** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ber_putc(%struct.ber* %41, i64 %42)
  br label %109

44:                                               ; preds = %2
  %45 = load i64, i64* @BER_TAG_MASK, align 8
  %46 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %47 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BER_CLASS_SHIFT, align 8
  %50 = shl i64 %48, %49
  %51 = or i64 %45, %50
  store i64 %51, i64* %5, align 8
  %52 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %53 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BER_TYPE_SEQUENCE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %44
  %58 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %59 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BER_TYPE_SET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %44
  %64 = load i64, i64* @BER_TYPE_CONSTRUCTED, align 8
  %65 = load i64, i64* %5, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.ber*, %struct.ber** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ber_putc(%struct.ber* %68, i64 %69)
  store i64 0, i64* %6, align 8
  %71 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %72 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %85, %67
  %75 = load i64, i64* %8, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @BER_TAG_MORE, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %82
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %8, align 8
  %87 = lshr i64 %86, 7
  store i64 %87, i64* %8, align 8
  br label %74

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %6, align 8
  %92 = icmp ugt i64 %90, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load i64, i64* %6, align 8
  %95 = icmp ugt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i64, i64* @BER_TAG_MORE, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %96, %93
  %103 = load %struct.ber*, %struct.ber** %3, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ber_putc(%struct.ber* %103, i64 %106)
  br label %89

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %40
  %110 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %111 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BER_TAG_MORE, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.ber*, %struct.ber** %3, align 8
  %117 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %118 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ber_putc(%struct.ber* %116, i64 %119)
  br label %154

121:                                              ; preds = %109
  store i64 0, i64* %6, align 8
  %122 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %123 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %134, %121
  %126 = load i64, i64* %9, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i64, i64* %9, align 8
  %130 = and i64 %129, 255
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %6, align 8
  %133 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %131
  store i64 %130, i64* %133, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %9, align 8
  %136 = lshr i64 %135, 8
  store i64 %136, i64* %9, align 8
  br label %125

137:                                              ; preds = %125
  %138 = load %struct.ber*, %struct.ber** %3, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @BER_TAG_MORE, align 8
  %141 = or i64 %139, %140
  %142 = call i32 @ber_putc(%struct.ber* %138, i64 %141)
  br label %143

143:                                              ; preds = %146, %137
  %144 = load i64, i64* %6, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.ber*, %struct.ber** %3, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %6, align 8
  %150 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ber_putc(%struct.ber* %147, i64 %151)
  br label %143

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %115
  ret void
}

declare dso_local i32 @ber_putc(%struct.ber*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
