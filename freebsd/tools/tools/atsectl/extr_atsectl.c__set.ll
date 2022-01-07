; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/atsectl/extr_atsectl.c__set.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/atsectl/extr_atsectl.c__set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Original:\0A\00", align 1
@KENV_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cfi0.factory_ppr\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not find Intel flash PPR serial\0A\00", align 1
@block = common dso_local global i32* null, align 8
@ALTERA_ETHERNET_OPTION_BITS_OFF = common dso_local global i32 0, align 4
@gflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"WARN: Selected Ethernet Address is not multi-MAC compatible.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"WARN: Locally administered bit not set.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"WARN: You are setting a Multicast address.\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Suggesting to re-run with: %02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Updated to:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_set(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @read_block()
  %9 = call i32 (...) @print_eaddr()
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %92

12:                                               ; preds = %1
  %13 = load i32, i32* @KENV_GET, align 4
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %15 = call i32 @kenv(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %14, i32 128)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = call i32 @MD5Init(i32* %4)
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call i32 @MD5Update(i32* %4, i32* %23, i32 16)
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %26 = call i32 @MD5Final(i32* %25, i32* %4)
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 14
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 4
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 13
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = or i32 %29, %32
  %34 = load i32*, i32** @block, align 8
  %35 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %36 = add nsw i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 13
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 12
  %43 = load i32, i32* %42, align 16
  %44 = ashr i32 %43, 4
  %45 = or i32 %41, %44
  %46 = load i32*, i32** @block, align 8
  %47 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %48 = add nsw i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 12
  %52 = load i32, i32* %51, align 16
  %53 = shl i32 %52, 4
  %54 = load i32*, i32** @block, align 8
  %55 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %56 = add nsw i32 %55, 9
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32*, i32** @block, align 8
  %60 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %61 = add nsw i32 %60, 9
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -16
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* @gflag, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %20
  %69 = load i32*, i32** @block, align 8
  %70 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %71 = add nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 2
  store i32 %75, i32* %73, align 4
  br label %84

76:                                               ; preds = %20
  %77 = load i32*, i32** @block, align 8
  %78 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %79 = add nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -3
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %76, %68
  %85 = load i32*, i32** @block, align 8
  %86 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %87 = add nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -2
  store i32 %91, i32* %89, align 4
  br label %200

92:                                               ; preds = %1
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** @block, align 8
  %97 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %98 = add nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load i32*, i32** %2, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** @block, align 8
  %105 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %106 = add nsw i32 %105, 5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32*, i32** %2, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** @block, align 8
  %113 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %114 = add nsw i32 %113, 6
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load i32*, i32** %2, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @block, align 8
  %121 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %122 = add nsw i32 %121, 7
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32*, i32** %2, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** @block, align 8
  %129 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %130 = add nsw i32 %129, 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32*, i32** %2, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @block, align 8
  %137 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %138 = add nsw i32 %137, 9
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  store i32 0, i32* %6, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 15
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %92
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %146, %92
  %151 = load i64, i64* @gflag, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i32*, i32** %2, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  %162 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %153, %150
  %164 = load i32*, i32** %2, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %163
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  %177 = load i32*, i32** %2, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 254
  %181 = or i32 %180, 2
  %182 = load i32*, i32** %2, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %2, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %2, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %2, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %2, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 240
  %198 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %181, i32 %184, i32 %187, i32 %190, i32 %193, i32 %197)
  br label %199

199:                                              ; preds = %176, %173
  br label %200

200:                                              ; preds = %199, %84
  %201 = load i32*, i32** @block, align 8
  %202 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %203 = add nsw i32 %202, 0
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 254, i32* %205, align 4
  %206 = load i32*, i32** @block, align 8
  %207 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 90, i32* %210, align 4
  %211 = load i32*, i32** @block, align 8
  %212 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %213 = add nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 0, i32* %215, align 4
  %216 = load i32*, i32** @block, align 8
  %217 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 4
  %218 = add nsw i32 %217, 3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 0, i32* %220, align 4
  %221 = call i32 (...) @write_block()
  %222 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %223 = call i32 (...) @read_block()
  %224 = call i32 (...) @print_eaddr()
  %225 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @read_block(...) #1

declare dso_local i32 @print_eaddr(...) #1

declare dso_local i32 @kenv(i32, i8*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @write_block(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
