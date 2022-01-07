; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_key_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_session = type { i32, i32, %struct.auth_hash* }
%struct.auth_hash = type { i32, i32 (i32, i32*, i32)*, i32 (i32)* }

@HMAC_IPAD_VAL = common dso_local global i32 0, align 4
@hmac_ipad_buffer = common dso_local global i32* null, align 8
@HMAC_OPAD_VAL = common dso_local global i32 0, align 4
@hmac_opad_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glxsb_session*, i32*, i32)* @glxsb_hash_key_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxsb_hash_key_setup(%struct.glxsb_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.glxsb_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_hash*, align 8
  %8 = alloca i32, align 4
  store %struct.glxsb_session* %0, %struct.glxsb_session** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sdiv i32 %9, 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %12 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %11, i32 0, i32 2
  %13 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  store %struct.auth_hash* %13, %struct.auth_hash** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %31 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %30, i32 0, i32 2
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %34 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35)
  %37 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %38 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %37, i32 0, i32 1
  %39 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %38, align 8
  %40 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %41 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %39(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %47 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %46, i32 0, i32 1
  %48 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %47, align 8
  %49 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %50 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @hmac_ipad_buffer, align 8
  %53 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %54 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 %48(i32 %51, i32* %52, i32 %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %73, %29
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %65 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %66 = xor i32 %64, %65
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %78 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %77, i32 0, i32 2
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %81 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %79(i32 %82)
  %84 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %85 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %84, i32 0, i32 1
  %86 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %85, align 8
  %87 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %88 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 %86(i32 %89, i32* %90, i32 %91)
  %93 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %94 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %93, i32 0, i32 1
  %95 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %94, align 8
  %96 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %97 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** @hmac_opad_buffer, align 8
  %100 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %101 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 %95(i32 %98, i32* %99, i32 %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %118, %76
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %106

121:                                              ; preds = %106
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
