; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8**, i8*, i64, i32 }

@DMABSTS_NTBUF = common dso_local global i32 0, align 4
@BSTS_OWN24 = common dso_local global i32 0, align 4
@BSTS_EOFR = common dso_local global i32 0, align 4
@BSTS_INTR = common dso_local global i32 0, align 4
@M_ASYNC = common dso_local global i64 0, align 8
@IER_RXD = common dso_local global i32 0, align 4
@IER_TXD = common dso_local global i32 0, align 4
@IER_TXMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i8*)* @cx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_send(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @CAR(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 3
  %22 = call i32 @outb(i32 %17, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DMABSTS(i32 %25)
  %27 = call i32 @inb(i32 %26)
  %28 = load i32, i32* @DMABSTS_NTBUF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BTBSTS(i32 %34)
  %36 = call i32 @inb(i32 %35)
  %37 = load i32, i32* @BSTS_OWN24, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ATBCNT(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ATBSTS(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8** %55, i8*** %13, align 8
  br label %72

56:                                               ; preds = %31
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BTBCNT(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @BTBSTS(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8** %71, i8*** %13, align 8
  br label %72

72:                                               ; preds = %56, %40
  br label %115

73:                                               ; preds = %4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ATBSTS(i32 %76)
  %78 = call i32 @inb(i32 %77)
  %79 = load i32, i32* @BSTS_OWN24, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %73
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %10, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @BTBCNT(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @BTBSTS(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8** %97, i8*** %13, align 8
  br label %114

98:                                               ; preds = %73
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %10, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ATBCNT(i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ATBSTS(i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  store i8** %113, i8*** %13, align 8
  br label %114

114:                                              ; preds = %98, %82
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @inb(i32 %116)
  %118 = load i32, i32* @BSTS_OWN24, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 -1, i32* %5, align 4
  br label %184

122:                                              ; preds = %115
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = load i8**, i8*** %13, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @outw(i32 %129, i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @BSTS_EOFR, align 4
  %134 = load i32, i32* @BSTS_INTR, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @BSTS_OWN24, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @outb(i32 %132, i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @M_ASYNC, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %183

144:                                              ; preds = %122
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ATBSTS(i32 %147)
  %149 = call i32 @inb(i32 %148)
  %150 = load i32, i32* @BSTS_OWN24, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %144
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @BTBSTS(i32 %156)
  %158 = call i32 @inb(i32 %157)
  %159 = load i32, i32* @BSTS_OWN24, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %153
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @IER(i32 %165)
  %167 = load i32, i32* @IER_RXD, align 4
  %168 = load i32, i32* @IER_TXD, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @IER_TXMPTY, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @outb(i32 %166, i32 %171)
  br label %182

173:                                              ; preds = %153, %144
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @IER(i32 %176)
  %178 = load i32, i32* @IER_RXD, align 4
  %179 = load i32, i32* @IER_TXD, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @outb(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %173, %162
  br label %183

183:                                              ; preds = %182, %122
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %121
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CAR(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DMABSTS(i32) #1

declare dso_local i32 @BTBSTS(i32) #1

declare dso_local i32 @ATBCNT(i32) #1

declare dso_local i32 @ATBSTS(i32) #1

declare dso_local i32 @BTBCNT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @IER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
