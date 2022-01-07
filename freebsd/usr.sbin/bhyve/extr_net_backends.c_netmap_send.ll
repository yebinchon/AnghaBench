; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i64 }
%struct.iovec = type { i32, i8* }
%struct.netmap_priv = type { %struct.netmap_ring* }
%struct.netmap_ring = type { i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"No space, drop %zu bytes\0A\00", align 1
@NS_MOREFRAG = common dso_local global i64 0, align 8
@NIOCTXSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_backend*, %struct.iovec*, i32)* @netmap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_send(%struct.net_backend* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.net_backend*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netmap_priv*, align 8
  %8 = alloca %struct.netmap_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.net_backend* %0, %struct.net_backend** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %19 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.netmap_priv*
  store %struct.netmap_priv* %21, %struct.netmap_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.netmap_priv*, %struct.netmap_priv** %7, align 8
  %23 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %22, i32 0, i32 0
  %24 = load %struct.netmap_ring*, %struct.netmap_ring** %23, align 8
  store %struct.netmap_ring* %24, %struct.netmap_ring** %8, align 8
  %25 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %26 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %30 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.iovec*, %struct.iovec** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @count_iov(%struct.iovec* %34, i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @WPRINTF(i8* %38)
  br label %176

40:                                               ; preds = %3
  %41 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %42 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %43 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @NETMAP_BUF(%struct.netmap_ring* %41, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %51 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %151, %40
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %154

57:                                               ; preds = %53
  %58 = load %struct.iovec*, %struct.iovec** %5, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %15, align 4
  %64 = load %struct.iovec*, %struct.iovec** %5, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i64 %66
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %16, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %137, %57
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %17, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr i8, i8* %88, i64 %89
  store i8* %90, i8** %16, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr i8, i8* %95, i64 %96
  store i8* %97, i8** %13, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %81
  br label %150

107:                                              ; preds = %81
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %110 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %108, i32* %114, align 8
  %115 = load i64, i64* @NS_MOREFRAG, align 8
  %116 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %117 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %116, i32 0, i32 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i64 %115, i64* %121, align 8
  %122 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @nm_ring_next(%struct.netmap_ring* %122, i64 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %127 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %107
  %131 = load %struct.iovec*, %struct.iovec** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @count_iov(%struct.iovec* %131, i32 %132)
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @WPRINTF(i8* %135)
  br label %176

137:                                              ; preds = %107
  %138 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %139 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %140 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @NETMAP_BUF(%struct.netmap_ring* %138, i32 %145)
  store i8* %146, i8** %13, align 8
  %147 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %148 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %73

150:                                              ; preds = %106
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %53

154:                                              ; preds = %53
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %157 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %156, i32 0, i32 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 %155, i32* %161, align 8
  %162 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %163 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %162, i32 0, i32 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %169 = load i64, i64* %12, align 8
  %170 = call i64 @nm_ring_next(%struct.netmap_ring* %168, i64 %169)
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %173 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %175 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  br label %176

176:                                              ; preds = %154, %130, %33
  %177 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %178 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @NIOCTXSYNC, align 4
  %181 = call i32 @ioctl(i32 %179, i32 %180, i32* null)
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @count_iov(%struct.iovec*, i32) #1

declare dso_local i8* @NETMAP_BUF(%struct.netmap_ring*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @nm_ring_next(%struct.netmap_ring*, i64) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
